class CannonBall
{
  PVector position;
  PVector direction;
  PVector velocity;
  
  float speed;
  float gravity = 9.8;
  
  float radi;
  float mass;
  
  CannonBall(float x, float y, float radius)
  {
    position = new PVector(x,y);
    radi = radius;
    
    mass = radius* 0.1;
    
  }
  
  
  void fire()
  {
   
  }
  
  
 void updateGrav()
 {
  
     position.y += gravity;
   
  
 }
 
 void display()
 {
   noStroke();
   fill(204);
   ellipse(position.x,position.y,radi*2,radi*2);
 }
}
