Ball[] balls = 
{
 new Ball(100,400,20),
 new Ball(700,400,80)
};

void setup()
{
  size(640,360);
  
}


void draw()
{
  background(51);
  for(Ball b: balls)
  {
    b.update();
    b.boundary();
    b.display();
  }
  
  
}



class Ball
{
  PVector position;
  PVector velocity;
  
  float radius;
  float m;
  
  Ball(float x,float y,float r)
  {
    position = new PVector(x,y);
    velocity = PVector.random2D();
    velocity.mult(3);
    radius = r;
    m = radius*.1;
  }
  
  
  
void display()
{
  noStroke();
  fill(204);
  ellipse(position.x,position.y,radius*2,radius*2);
}

void update()
{
  position.add(velocity);
}
  
void boundary()
{
   if(position.x > width - radius)
   {
     position.x = width - radius;
     velocity.x *= -1;
   }
   else if(position.x < radius)
   {
     position.x = radius;
     velocity.x *= -1;
   }
   else if(position.y > radius)
   {
     position.y = radius;
     velocity.y *= -1;
   }
   else if(position.y < radius)
   {
     position.y = radius;
     velocity.y *= -1;
   }
  
}
  
  
  
  
  
  
}
