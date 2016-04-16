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
  Vec3d triNormal = cross(ray.direction(), edge2);
  
  // if the determinant is tiny, the ray lies in the triangle plane
  double determinant = dot(edge1, triNormal);
  
  // only implement no-culling method. whatever culling is.
  if(abs(determinant) < Math::safetyEps())
    return false;
    
  double inverseDeterminant = 1.0f / determinant;
  
  Vec3d vertexToRayDistance = ray.origin() - mVertices[0];
  
  float u = dot(vertexToRayDistance, triNormal) * inverseDeterminant;
  
  // invalid position value. no intersection
  if(u < 0.f || u > 1.f)
    return false;
    
  Vec3d vTest = cross(vertexToRayDistance, edge1);
  
  double v = dot(ray.direction(), vTest) * inverseDeterminant;

  // invalid position value. no intersection
  if(v < 0.f || u + v > 1.f)
    return false;
    
  double w = dot(edge2, vTest) * inverseDeterminant;
  
  if(w > Math::safetyEps())
  {
    Vec3d uvw(0, 0, 0);
    //std::cout << "lambda: " << w << std::endl;
    intersection = RayIntersection(ray, shared_from_this(), w, vTest, uvw);
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
