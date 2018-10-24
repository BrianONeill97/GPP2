Cannon can = new Cannon(-20, -20, 40, 100, 10);

boolean ballAlive = false;
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
  
  if(ballAlive == true)
  {
    can.shoot();  
  }
  
  if(can.check() == true)
  {
    can.reset(0,0);
    ballAlive = false;
  }
}
