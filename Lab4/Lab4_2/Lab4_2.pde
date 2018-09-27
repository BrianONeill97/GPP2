PVector location;  // Location of shape One
PVector velocity;  // Velocity of shape One

PVector locationTwo;  // Location of shape Two
PVector velocityTwo;  // Velocity of shape Two

void setup() {
  size(640,360);
  location = new PVector(320,180);
  velocity = new PVector(1.5,2.1);
  
  locationTwo = new PVector(100,180);
  velocityTwo = new PVector(1.5,2.1);

}

void draw() {
  background(0);
  
 //Adding Velo to location Vector
  location.add(velocity);
  locationTwo.add(velocityTwo);
  
// Edge Hit Detection
if (location.x > width-24 || location.x < 24) 
{
    velocity.x *= -1; // reversing the velo veol in the x
  }
  if (location.y > height-24 || location.y < 24) 
  {
    velocity.y *= -1; // reversing the velo vector in the y
  }

//Ball Two
if (locationTwo.x > width-24 || locationTwo.x < 24) 
{
    velocityTwo.x *= -1; // reversing the velo veol in the x
  }
  if (locationTwo.y > height-24 || locationTwo.y < 24) 
  {
    velocityTwo.y *= -1; // reversing the velo vector in the y
  }
  
  


  // Display circle at location vector
  stroke(100);
  fill(120,240,120);
  ellipse(location.x,location.y,48,48);
  
   //ball to ball collision
 if(dist(location.x,location.y,locationTwo.x,locationTwo.y) < 48)
 {
   fill(255,0,0);
   
 }
  ellipse(locationTwo.x,locationTwo.y,48,48);
}
