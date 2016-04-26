#include "Triangle.hpp"
#include "Ray.hpp"
#include <memory>

namespace rt
{
Triangle::Triangle(const Vec3d &v0, const Vec3d &v1, const Vec3d &v2,
                   const Vec3d &uvw0, const Vec3d &uvw1, const Vec3d &uvw2)
{
  mVertices[0] = v0;
  mVertices[1] = v1;
  mVertices[2] = v2;
  mUVW[0] = uvw0;
  mUVW[1] = uvw1;
  mUVW[2] = uvw2;
}

// good old Möller-Trumbore
bool
Triangle::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  // get triangle edges 
  Vec3d edge1 = mVertices[1] - mVertices[0];
  Vec3d edge2 = mVertices[2] - mVertices[0];
    
  // 
  Vec3d pVec = cross(ray.direction(), edge2);
  
  // if the determinant is tiny, the ray lies in the triangle plane
  double determinant = dot(edge1, pVec);
  
  // only implement no-culling method
  if(determinant > -Math::safetyEps() && determinant < Math::safetyEps())
    return false;
    
  double inverseDeterminant = 1.0d / determinant;
  
  Vec3d tVec = ray.origin() - mVertices[0];
  
  float u = dot(tVec, pVec) * inverseDeterminant;
  
  // invalid position value. no intersection
  if(u < 0.0d || u > 1.0d)
    return false;
    
  Vec3d qVec = cross(tVec, edge1);
  
  double v = dot(ray.direction(), qVec) * inverseDeterminant;

  // invalid position value. no intersection
  if(v < 0.0d || u + v > 1.0d)
    return false;
    
  double t = dot(edge2, qVec) * inverseDeterminant;
  
  if(t > Math::safetyEps())
  {
    Vec3d uvw(0, 0, 0);
    //std::cout << "lambda: " << t << std::endl;
    intersection = RayIntersection(ray, shared_from_this(), t, cross(ray.direction(), ray.direction()), uvw);
    return true;
  } 
  return false;
}

BoundingBox Triangle::computeBoundingBox() const
{
  BoundingBox bbox;
  bbox.expandByPoint(mVertices[0]);
  bbox.expandByPoint(mVertices[1]);
  bbox.expandByPoint(mVertices[2]);
  return bbox;
}

} //namespace rt
