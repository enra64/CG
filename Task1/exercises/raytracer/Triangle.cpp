<<<<<<< HEAD
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
=======
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

/*
Möller-Trumbore starts with the triangle formula T(u, v) = (1 - u - v)*V_0 + u * V_1 + v * V_2,
and the ray formula R(t) = O + tD. To calculate an intersection, we thus need to calculate R(t) = T(u,v) or
O + tD = (1 - u - v)*V_0 + u * V_1 + v * V_2. 
That can be rearranged, leaving only the resulting equation to solve. 
The paper then describes an efficient method to calculate all of u and v and t, which is implemented in the
following without culling back-facing triangles.
*/
bool
Triangle::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  // get triangle edges 
  Vec3d edge1 = mVertices[1] - mVertices[0];
  Vec3d edge2 = mVertices[2] - mVertices[0];
   
  // calculate pVec, perpendicular to the ray and edge2
  Vec3d pVec = cross(ray.direction(), edge2);
  // if the determinant is tiny, the ray lies in the triangle plane
  double determinant = dot(pVec, edge1);
  if(fabs(determinant) < Math::safetyEps()) 
    return false;

  // calculate the inverse determinant
  double inverseDeterminant = 1.0d / determinant;
  
  // calculate T, the distance from vertex 0 to ray origin
  Vec3d tVec = ray.origin() - mVertices[0];

  // calculate the u parameter
  float u = dot(pVec, tVec) * inverseDeterminant;
  // invalid values -> no intersection
  if(u < 0.0d || u > 1.0d) 
    return false;
    
  // Q needs to be calculated because of a math trick that saves time
  Vec3d qVec = cross(tVec, edge1);
  // calculate v parameter with Q
  double v = dot(qVec, ray.direction()) * inverseDeterminant;
  // invalid values -> no intersection
  if(v < 0.0d || (u + v) > 1.0d) 
    return false;
    
  // this is the t parameter, our lambda (t as in O + tD)
  double lambda = dot(qVec, edge2) * inverseDeterminant;
  
  // test one last time for acceptable lambde values
  if(lambda < Math::safetyEps() || lambda > maxLambda)
    return false;

  // create "return" intersection object
  intersection = RayIntersection(ray, shared_from_this(), lambda, cross(edge1, edge2), Vec3d(0,0,0));
  // intersection
  return true;
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
>>>>>>> c609b3c92dda4dbf53241201e31bcb1df6bb4531
