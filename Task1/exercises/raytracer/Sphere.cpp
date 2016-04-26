#include "Sphere.hpp"
#include "Ray.hpp"
#include "Vector3.hpp"
#include <memory>

namespace rt
{

/** \brief calculate distance between ray and point
 *
 * @param rayOfInterest The ray of interest
 * @param pointOfInterest The point we are interested in
 * @param lambda direction factor to reach the point on the ray nearest to the point of interest
 * @param distance Distance between ray and point of interest
 */
void Sphere::pointToRayDistance(const Ray &rayOfInterest, const Vec3d* pointOfInterest, double* lambda, double* distance) const {
  // create a vector (u) from ray origin p to point of interest
  Vec3d u = *pointOfInterest - rayOfInterest.origin();

  // calculate lambda - the scalar we need to multiply the ray direction
  // with to reach the point projected on the ray
  *lambda = dot(u, rayOfInterest.direction());
  
  // point where the projection hits the ray
  Vec3d pointOnRay = rayOfInterest.pointOnRay(*lambda);
  
  // distance between the point of interest and the point on the ray
  *distance = (*pointOfInterest - pointOnRay).length();
}

bool
Sphere::closestIntersectionModel(const Ray &ray, double maxLambda, RayIntersection& intersection) const
{
  // prepare distance calculation parameters
  double lambda;
  double distance;
  
  // im not quite sure whether this may change, so i put it in variables
  double radius = 1;
  Vec3d origin(0, 0, 0);
  
  // calculate ray to origin distance and the associated lambda
  pointToRayDistance(ray, &origin, &lambda, &distance);
  
  // distance to the sphere is greater than its radius -> no intersection
  if(distance > radius)
    return false;
    
  // two intersection points, find the one less distant from the ray origin
  if(1.d - distance > Math::safetyEps()){
    // basically pythagorean theorem:
    // a: radius
    // b: distance between sphere origin and the calculated point on ray
    // c: distance between point on ray and sphere intersection
    double b = (ray.pointOnRay(lambda) - origin).length();
    double c = sqrt((radius*radius) - (b*b));
    // subtract the distance from point on ray to intersection point
    lambda -= c;
  }
    
  
  // lambda too small (intersection is behind ray)
  if (lambda<0)
    return false;
  
  // lambda too big
  if(lambda>maxLambda)
    return false;

  // create intersection "return" object
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
