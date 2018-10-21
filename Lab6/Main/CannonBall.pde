class CannonBall
{
  PVector position;
  PVector direction;
  PVector velocity;

  float speed;
  float gravity = 0.1;
  float friction = 0.99;


  float radi;
  float mass;

  CannonBall(float x, float y, float radius)
  {
    position = new PVector(x, y);
    radi = radius;

    velocity = new PVector(6, -5);


    mass = radius* 0.1;
  }


  void fire()
  {    
    position.add(velocity);

    velocity.y += gravity;
  }




  void collision()
  {
    if (position.y > 731 )
    {

      velocity = new PVector(0, 0);
    }

    if (position.x >= 1980)
    {
      velocity.x *= -1;
    }
  }

  void display()
  {
    noStroke();
    fill(50, 50, 100);
    ellipse(position.x, position.y, radi*2, radi*2);
  }
}
