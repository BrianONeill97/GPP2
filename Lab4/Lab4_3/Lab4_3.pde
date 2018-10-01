Ball[] balls = 
{
 new Ball(100,400,20),
 new Ball(700,400,80)
};

void setup()
{
  size(1000,500);
  
}


void draw()
{
  background(10);
  for(Ball b: balls)
  {
    b.update();
    b.boundary();
    b.display();
  }
  
  balls[0].ballCollision(balls[1]);
}





  
  
  
  
  
  
