#include "Sphere.hpp"
#include "Ray.hpp"
#include "Vector3.hpp"
#include <memory>

namespace rt
{
// q=point of interest
void Sphere::pointToRayDistance(const Ray &ray, const Vec3d* q, double* lambda, double* distance) const {
  // create a vector (u) from ray origin p to point of interest q
  Vec3d u = *q - ray.origin();

  // calculate lambda - the scalar we need to multiply the ray direction
  // with to reach the point projected on the ray
  *lambda = dot(u, ray.direction());
  
  // point where the projection hits the ray
  Vec3d pointOnRay = ray.pointOnRay(*lambda);
  
  // distance between the questioned point and the point on the ray
  *distance = (*q - pointOnRay).length();
}

bool
Sphere::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  // prepare output variables
  double lambda;
  double distance;
  
  // may be changed in the future
  double radius = 1;
  Vec3d origin(0, 0, 0);
  
  // get lambda and distance to origin
  pointToRayDistance(ray, &origin, &lambda, &distance);
  
  // distance to the sphere is greater than its radius
  if(distance > radius)
    return false;
  
  // lambda too small (intersection is behind ray)
  if (lambda<0)
    return false;
  
  // lambda too big
  if(lambda>maxLambda)
    return false;

  // create intersection object
  intersection = RayIntersection(ray,shared_from_this(), lambda, ray.pointOnRay(lambda), Vec3d(0, 0, 0));
  return true;
}

BoundingBox Sphere::computeBoundingBox() const
{
  BoundingBox box;
  box.setMin(Vec3d(-1,-1,-1));
  box.setMax(Vec3d(1,1,1));
  return box;
}

} //namespace rt
