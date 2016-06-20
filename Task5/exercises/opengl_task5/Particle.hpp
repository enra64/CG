#ifndef FORCEPARTICLE_HPP_INCLUDE_ONCE
#define FORCEPARTICLE_HPP_INCLUDE_ONCE

#include <opengl/OpenGL.hpp>

namespace ogl
{
  //The particle struct is copied to the GPU for rendering
  struct Particle
  {
    Particle() : lifeLeft(0.f), isSpecialParticle(0.f) {}
    Vec3f position;            //<Particle world position.
    Vec3f velocity;            //<Particle velocity vector.
    float lifeLeft;           //<Particle life left in seconds (dies when lifeLeft ==0)
    float isSpecialParticle;  //<Particle status, 0->normal, 1 ->force particle
  };

//Abstract class for particles that exert forces to other particles
class ForceParticle
{
public:

  // This function must be implemented by force particles.
  // The first parameter is the world position of the force particle.
  // The second parameter is the world position of the other particle (that the force acts upon)
  // The return value is a force vector in world coordinates.
  virtual Vec3f computeForce(const Particle &forceParticle, const Vec3f &otherParticlePosition) const=0;
};

class PointGravitySource : public ForceParticle
{
public:
  Vec3f computeForce(
    const Particle & forceParticle, 
    const Vec3f &otherParticlePosition) const override
  {
    Vec3f distVector = otherParticlePosition - forceParticle.position;
    double distance = distVector.length();
    double radius = 0;
    // the greater the distance between radius and pos, the smaller the force
    bool withinRadius = radius > distance;
    double force;
    
    if(withinRadius){
      force = 10 / (distance - radius);
    } else {
      force = 1 / (radius - distance);
    }
    
    Vec3f forceVector = distVector * force;
    
    /*std::cout << "isInRadius" << withinRadius << ": " <<
      forceVector.x() << "," <<
      forceVector.y() << "," <<
      forceVector.z() << std::endl;*/
    
    return forceVector;
  }
};

}

#endif //FORCEPARTICLE_HPP_INCLUDE_ONCE
