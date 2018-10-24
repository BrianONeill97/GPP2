Cannon can = new Cannon(-20, -20, 40, 100, 10);
Target t = new Target(700, 100, 50, 50);

boolean ballAlive = false;
boolean targetAlive = true;
void setup()
{
  size(1200, 500);
}


void draw()
{ 
  background(10);

  can.drawCannon();
  if (keyPressed)
  {
    //Checks the Space Key
    if (key == ' ')
    {
      ballAlive = true;
    }
  }

  if (ballAlive == true)
  {
    can.shoot();
  }

  if (can.check() == true)
  {
    can.reset(0, 0);
    ballAlive = false;
  }
  if (dist(can.x, can.y, t.pos.x, t.pos.y) < 40)
  {
    targetAlive = false;
  }

  if (targetAlive == true)
  {
    t.drawTarget();
  }
}
