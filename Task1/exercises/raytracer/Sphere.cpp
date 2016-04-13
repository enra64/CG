#include "Sphere.hpp"
#include "Ray.hpp"
#include <memory>

namespace rt
{

bool
Sphere::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  //Programming TASK 1: implement this method
  //Your code should compute the intersection between a ray and a unit sphere, with radius = 1, centered at origin (0,0,0);

  //If you detect an intersection, the return type should look similar to this:
  //if(rayIntersectsSphere)
  //{
  //  intersection = RayIntersection(ray,shared_from_this(),lambda,ray.pointOnRay(lambda),uvw);
  //  return true;
  //}
  
  return false;
}

BoundingBox Sphere::computeBoundingBox() const
{
  BoundingBox box;
  box.setMin(Vec3d(-1,-1,-1));
  box.setMax(Vec3d(1,1,1));
  return box;
}

} //namespace rt
