class Ball
{
  PVector position;
  PVector velocity;

  float radius;
  float mass;

  Ball(float x, float y, float r)
  {
    position = new PVector(x, y);
    velocity = PVector.random2D();
    velocity.mult(3);
    radius = r;
    mass = radius*.1;
  }

  void update()
  {
    position.add(velocity);
  }

  void boundary()
  {
    if (position.x > width - radius)
    {
      position.x = width - radius;
      velocity.x *= -1;
    } else if (position.x < radius)
    {
      position.x = radius;
      velocity.x *= -1;
    } else if (position.y > height-radius)
    {
      position.y = height-radius;
      velocity.y *= -1;
    } else if (position.y < radius)
    {
      position.y = radius;
      velocity.y *= -1;
    }
  }



  void ballCollision(Ball other)
  {
    PVector distVec = PVector.sub(other.position, position);

    float distMag = distVec.mag();

    float minDist = radius + other.radius;


    if (distMag < minDist)
    {
      // Used to stop them sticking 
      PVector temp = new PVector(velocity.x, velocity.y);
      velocity.x = (velocity.x * (mass - other.mass) + (2 * (other.mass * other.velocity.x))) / (mass + other.mass);
      velocity.y = (velocity.y * (mass - other.mass) + (2 * (other.mass * other.velocity.y))) / (mass + other.mass);
      other.velocity.x = (other.velocity.x * (other.mass - mass) + (2 * mass * temp.x)) / (mass + other.mass);
      other.velocity.y = (other.velocity.y * (other.mass - mass) + (2 * mass * temp.y)) / (mass + other.mass);
      
      position.add(velocity);
      other.position.add(other.velocity);
    
  }
    
    
  }




  void display()
  {
    noStroke();
    fill(204);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
