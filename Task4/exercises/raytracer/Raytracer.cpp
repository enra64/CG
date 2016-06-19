#include "Raytracer.hpp"
#include "Scene.hpp"
#include "Image.hpp"
#include "Camera.hpp"
#include "Light.hpp"
#include "Renderable.hpp"
#include "Material.hpp"
#include "Math.hpp"
#include "Image.hpp"

namespace rt
{

Raytracer::Raytracer(size_t maxDepth) : mMaxDepth(maxDepth)
{
}

Raytracer::~Raytracer()
{
}

void Raytracer::renderToImage(std::shared_ptr<Image> image) const
{
  if(!mScene)
    return;

  if(!mScene->camera())
    return;

  mScene->prepareScene();

  Camera &camera = *(mScene->camera().get());
  camera.setResolution(image->width(),image->height());

#ifdef NDEBUG
#pragma omp parallel for schedule(dynamic,16) //collapse(2)
#endif
  for(int y=0;y<(int)(image->height());++y)
    for(int x=0;x<(int)(image->width());++x)
    {
      // ray shot from camera position through camera pixel into scene
      const Ray ray = camera.ray(x,y);

      // call recursive raytracing function
      Vec4d color = this->trace(ray,0);
      image->setPixel(color,x,y);
    }
}

Vec4d Raytracer::trace(const Ray &ray, size_t depth) const
{
  RayIntersection intersection;
  if (mScene->closestIntersection(ray,intersection))
    return this->shade(intersection, depth);

  return mScene->backgroundColor();
}

Vec4d Raytracer::shade(const RayIntersection& intersection,
                      size_t depth) const
{
  // This offset must be added to intersection points for further
  // traced rays to avoid noise in the image
  const Vec3d offset(intersection.normal() * Math::safetyEps());

  Vec4d color(0,0,0,1);
  std::shared_ptr<const Renderable> renderable = intersection.renderable();
  std::shared_ptr<const Material>   material   = renderable->material();

  for(size_t i=0;i <mScene->lights().size();++i)
  {
    const Light &light = *(mScene->lights()[i].get());

    //Shadow ray from light to hit point.
    const Vec3d L = (intersection.position() + offset) - light.position();
    const Ray shadowRay(light.position(), L);

    //Shade only if light in visible from intersection point.
    if (!mScene->anyIntersection(shadowRay,L.length()))
      color += material->shade(intersection,light);
  }


  if (depth<mMaxDepth)
  {
    const Vec3d &N(intersection.normal());

    // get incident viewing vector
    const Vec3d &I = intersection.ray().direction();

    double t= material->reflectance();

    if (t>double(0))
    {
      // get out-going viewing direction (reflect)
      Vec3d D = reflect(I, N).normalize();

      // calculate incident radiance by recursive ray tracing
      const Ray  r(intersection.position()+offset, D);
      const Vec4d incident_radiance = this->trace(r,++depth);

      // how much of the incident radiance is reflected toward the viewer?
      color = color*(1.0-t) + incident_radiance * Vec4d(material->color(),1) * t;
      color[3]=1.0;
    }
  }

  return color;
}

} //namespace rt
