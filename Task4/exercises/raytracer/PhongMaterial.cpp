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

  Vec3d PhongMaterial::brdf_phong(const Vec3d &V, const Vec3d &L, const Vec3d &N) const
  {
    double r_f0=0.04;
    /************************************************************************/
    /*steel ~0.55                                                           */
    /*aluminum ~0.95                                                        */
    /*water glass and plastic ~0.04                                         */
    /*diamond ~0.15                                                         */
    /*gold ~0.6 blue-channel and ~0.9 red-channel                           */
    /*copper ~0.4 blue-channel and ~0.85 red-channel                        */
    /************************************************************************/

    // reflect incident view vector at normal
    Vec3d R = reflect(V,N);

    // get cosine of angle between light direction and reflected vector
    double cosLR = dot(L,R);
    // compute specular power
    double specPower = pow(std::max(cosLR, double(0)), mShininess);

    // assemble the normalized phong-brdf
    return color() / M_PI + (mShininess + 2.0) / (2.0 * M_PI) * r_f0 * specPower;
  }

  Vec4d PhongMaterial::shade(const RayIntersection& intersection,
    const Light& light) const 
  {
    // get normal and light direction
    Vec3d N = intersection.normal();
    Vec3d L = light.position() - intersection.position();
    // get squared light distance
    double distance2 = L.lengthSquared();
    L.normalize();

    // get cosine of angle between light direction and normal
    double cosNL = dot(N,L);
    // clamp the cosine (positive when facing the light, otherwise 0)
    double cosNL_clamped = std::max(cosNL, double(0));

    // compute radiance incoming from the light
    //(quadratic fall-off since receiver area decreases quadratically)
    Vec3d incident_radiance = light.spectralIntensity() / distance2;

    // the flux arriving at the surface (called irradiance)
    // depends on its incoming angle
    Vec3d irradiance = incident_radiance * cosNL_clamped;

    // get the incident (!) view vector
    Vec3d V = intersection.ray().direction();

    // compute, how much of the arriving irradiance is reflected 
    // toward the viewer (multiply by BRDF)
    Vec3d outgoing_radiance = irradiance * brdf_phong(V, L, N);

    return Vec4d(outgoing_radiance, 1.0);

  }

} //namespace rt
