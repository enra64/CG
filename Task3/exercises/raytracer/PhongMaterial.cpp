#include "PhongMaterial.hpp"
#include "Light.hpp"
#include "Math.hpp"
#include "Ray.hpp"

namespace rt
{

PhongMaterial::PhongMaterial(const Vec3d& color, double reflectance, double shininess) :  
  Material(color,reflectance), mShininess(shininess)
{

}

#define SPECULAR_REFLECTION_DEGREE 0.04

// use phong shading model
Vec4d PhongMaterial::shade(
  const RayIntersection& intersection,
  const Light& light) const 
{
  // calculate diffuse part of the equation
  Vec3d lightDirection = (light.position() - intersection.position()).normalize();  
  Vec3d diffuse = this->color() * std::max(dot(intersection.normal(), lightDirection), 0.d);
  
  // calculate specular part
  Vec3d viewDirection = intersection.ray().direction();
  Vec3d reflection = reflect(lightDirection, intersection.normal());
  Vec3d lightcolor = light.spectralIntensity() / 255;
  Vec3d specular = ((mShininess + 2) / (2 * M_PI)) * SPECULAR_REFLECTION_DEGREE * pow(std::max(dot(reflection, viewDirection), 0.d), mShininess) * lightcolor;
  
  // calculcate sum -> result
  return Vec4d(diffuse + specular, 1);
}

} //namespace rt
