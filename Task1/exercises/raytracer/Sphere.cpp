#include "Sphere.hpp"
#include "Ray.hpp"
#include "Vector3.hpp"
#include <memory>

namespace rt
{

Vec3d project(const Vec3d& u, const Vec3d& rayDirection){
  Vec3d rayDirectionNormalized = Vec3d(rayDirection).normalize();
  return Vector3::dot(
      u, 
      rayDirectionNormalized) * rayDirectionNormalized;
}

double distance(const Ray &ray, const Vec3d &point, const *Vec3d pointOnRay){
  // create a vector (u) from ray origin p to sphere center q
  Vec3d u = this.origin() - ray.origin();

  // u projected on the ray
  Vec3d projectionVector = project(u, ray.direction());
  
  // point where the projection hits the ray
  *pointOnRay = ray.origin() + projection;
  
  // distance between origin and the point on the ray
  return length(origin() - pointOnRay);
}

bool
Sphere::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  // first, check whether the distance between the sphere center and
  // the ray is smaller than the sphere radius 
  Vec3d pointOnRay;
  double d = distance(ray, origin(), &pointOnRay);
  
  bool  rayIntersectsSphere = d <= radius();

  //Programming TASK 1: implement this method
  //Your code should compute the intersection between a ray and a unit sphere, with radius = 1, centered at origin (0,0,0);

  //If you detect an intersection, the return type should look similar to this:
  if(rayIntersectsSphere)
  {
    intersection = RayIntersection(ray,shared_from_this(),lambda,ray.pointOnRay(lambda), uvw);
    return true;
  }
  
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
