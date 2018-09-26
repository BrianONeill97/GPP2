float x;
float y;
float delay = 0.02;

void setup()
{
  size(640,480);
  noStroke();
}

void draw()
{
  background(0);
  
  
  float pointerX = mouseX;
  float directionX = pointerX - x;
  x += directionX* delay;
  
  float pointerY = mouseY;
  float directionY = pointerY - y;
  y += directionY * delay;
  
  ellipse(x,y,66,66);
}
