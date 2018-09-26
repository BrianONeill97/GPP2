int radius = 30;
PVector position = new PVector();

float xSpeed = 2.8;
float ySpeed = 2.2;

int xDirect = 1;
int yDirect = 1;


void setup()
{
  size(640,360);
  ellipseMode(RADIUS);
  
  //setting starting pos
  position.x = width/2;
  position.y = height/2;
}

void draw()
{
  background(0);
  
  
  //Update Pos
  position.x = position.x + (xSpeed * xDirect);
  position.y = position.y + (ySpeed * yDirect);
  
 if (position.x > width-radius || position.x  < radius) 
 {
    xDirect *= -1;
  }
  if (position.y > height-radius || position.y < radius) 
  {
    yDirect *= -1;
  }
  
  ellipse(position.x,position.y,radius,radius);

}
