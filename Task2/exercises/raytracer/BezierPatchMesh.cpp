#include "BezierPatchMesh.hpp"
#include <functional>

namespace rt
{

  BezierPatchMesh::BezierPatchMesh(size_t m,    size_t n,
    size_t resu, size_t resv) : BVHIndexedTriangleMesh(),
  mM(m), mN(n), mResU(resu), mResV(resv)
  {
    // Allocate memory for Bezier points
    mControlPoints.resize(m*n);
  }

  void BezierPatchMesh::initialize()
  {
    //this function samples the underlying continuous patch and tessellates it
    //regularly with triangles

    //sample at triangle vertices at uniform uv parameters
    std::vector<BezierPatchSample> samples; samples.reserve(mResU*mResV);

    for(size_t j=0; j<mResV; ++j)
      for(size_t i=0; i<mResU; ++i)
        samples.push_back(this->sample(double(i) / (mResU-1), double(j) / (mResV-1)));

    //construct triangle strips based on the computed samples
    for(size_t j=0; j<mResV-1; ++j)
    {
      for(size_t i=0; i<mResU-1; ++i)
      {
        const size_t i00 = mResU* j    +  i,
          i10 = mResU* j    + (i+1),
          i01 = mResU*(j+1) +  i,
          i11 = mResU*(j+1) + (i+1);

        {
          //construct lower triangle
          const Vec3d &v0 = samples[i00].position,
            &v1 = samples[i10].position,
            &v2 = samples[i01].position;
          const Vec2d &p0 = samples[i00].uv,
            &p1 = samples[i10].uv,
            &p2 = samples[i01].uv;
          Vec3d  n0 = samples[i00].normal,
            n1 = samples[i10].normal,
            n2 = samples[i01].normal;

          if(!n0.lengthSquared() || !n1.lengthSquared() || !n2.lengthSquared())
          {
            //fall back to triangle normals if normals are not defined
            const Vec3d normal = cross((v1-v0),(v2-v0)).normalize();
            n0 = normal; n1 = normal; n2 = normal;
          }

          int i0=this->addVertex(v0,n0,Vec3d(p0,0));
          int i1=this->addVertex(v1,n1,Vec3d(p1,0));
          int i2=this->addVertex(v2,n2,Vec3d(p2,0));
          this->addTriangle(i0,i1,i2);
        }

        {
          //construct upper triangle
          const Vec3d &v0 = samples[i10].position,
            &v1 = samples[i11].position,
            &v2 = samples[i01].position;
          const Vec2d &p0 = samples[i10].uv,
            &p1 = samples[i11].uv,
            &p2 = samples[i01].uv;
          Vec3d n0 = samples[i10].normal,
            n1 = samples[i11].normal,
            n2 = samples[i01].normal;

          if(!n0.lengthSquared() || !n1.lengthSquared() || !n2.lengthSquared())
          {
            //fall back to triangle normals if normals are not defined
            const Vec3d normal = cross((v1-v0),(v2-v0)).normalize();
            n0 = normal; n1 = normal; n2 = normal;
          }
          int i0=this->addVertex(v0,n0,Vec3d(p0,0));
          int i1=this->addVertex(v1,n1,Vec3d(p1,0));
          int i2=this->addVertex(v2,n2,Vec3d(p2,0));
          this->addTriangle(i0,i1,i2);
        }
      }
    }
    BVHIndexedTriangleMesh::initialize();
  }

  BoundingBox BezierPatchMesh::computeBoundingBox() const
  {
    BoundingBox bbox;
    for (size_t i=0;i<mControlPoints.size();++i)
      bbox.expandByPoint(mControlPoints[i]);
    return bbox;
  }

  /** \brief evaluate bezier curve
   *
   * @param cntrl control points for the bezier curve
   * @param u the position of the evaluation
   * @param tangent a tangent to the result created by the last two control points.
   */
  Vec3d BezierPatchMesh::casteljau(const std::vector<Vec3d>& cntrl, double p, Vec3d& tangent) const{
      // get a copy that we can modify
      std::vector<Vec3d> tmp(cntrl);
      // we need the last two points for the tangent
      while(tmp.size() > 2){
        // casteljau step
        for(size_t i = 0; i < tmp.size() - 1; i++)
          tmp[i] = tmp[i] * (1 - p) + tmp[i + 1] * p;
        // the last point is now obsolete
        tmp.resize(tmp.size() - 1);
      }
      // calculate tangent
      tangent = tmp[1] - tmp[0];
      // do the last step, this is the interpolation result
      return tmp[0] * (1 - p) + tmp[1] * p;
  }

  BezierPatchMesh::BezierPatchSample BezierPatchMesh::sample(double u, double v) const
  {
    BezierPatchSample ret;
    ret.uv = Vec2d(u,v);

    // u and v control points
    std::vector<Vec3d> uPoints(mM), tmp;
    std::vector<Vec3d> vPoints(mN);
    
    // the two tangents
    Vec3d uTangent;
    Vec3d vTangent;

    // first interpolation run (along u)
    for(size_t j = 0; j < mN; j++){
      // get control points for the u axis
      for(size_t i = 0; i < mM; i++)
        uPoints[i] = controlPoint(i, j);

      // get the point on the bezier curve for this set of control points
      vPoints[j] = casteljau(uPoints, u, vTangent);
    }

    // get the actual v tangent
    casteljau(vPoints, v, vTangent);

    // multiply by number of control points
    vTangent *= vPoints.size();

    // second interpolation run (along v)
    for(size_t i = 0; i < mM; i++){
      // get control points for the v axis
      for(size_t j = 0; j < mN; j++)
        vPoints[j] = controlPoint(i, j); // i==u, j==v

      // get the point on the bezier curve for this set of control points
      uPoints[i] = casteljau(vPoints, v, uTangent);
    }

    // get the actual u tangent, and the calculated position, as this is the final interpolation run
    ret.position = casteljau(uPoints, u, uTangent);

    // multiply tangent by number of control points
    uTangent *= uPoints.size();

    // the normal is now the normalized cross product between the two tangents
    ret.normal = cross(uTangent, vTangent).normalize();

    return ret;
  }
} //namespace rt
