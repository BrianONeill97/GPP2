PVector location;  // Location of shape
PVector velocity;  // Velocity of shape

void setup() {
  size(640,360);
  location = new PVector(320,180);
  velocity = new PVector(1.5,2.1);

}

void draw() {
  background(0);
  
 //Adding Velo to location Vector
  location.add(velocity);
  
  // Edge Hit Detection
if (location.x > width-24 || location.x < 24) 
{
    velocity.x *= -1; // reversing the velo veol in the x
  }
  if (location.y > height-24 || location.y < 24) 
  {
    velocity.y *= -1; // reversing the velo vector in the y
  }


  // Display circle at location vector
  stroke(100);
  fill(120,240,120);
  ellipse(location.x,location.y,48,48);
}
