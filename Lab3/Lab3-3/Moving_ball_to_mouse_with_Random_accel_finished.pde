float x;
float y;

void setup()
{
  size(640,480);
  noStroke();
}

void draw()
{
  background(0);
  
  float delay = random(0.01,0.06);
  

  float pointerX = mouseX;
  float directionX = pointerX - x;
  x += directionX* delay;
  
  float pointerY = mouseY;
  float directionY = pointerY - y;
  y += directionY * delay;
  
  ellipse(x,y,66,66);
  
  print(y);
}
