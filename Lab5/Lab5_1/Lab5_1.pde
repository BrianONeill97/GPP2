  Player p = new Player(1000f,500f,90f);

/* @pjs preload="Sprites/guard.png"; */

PImage guard;

float xPos;
float yPos;


void setup()
{
  size(2000,1000);
  
  guard = loadImage("Sprites/guard.png");
  
  xPos = width/2;
  yPos = height/2;

}

void draw()
{
  
    background(10);
    image(guard,xPos,yPos);

    p.keyPressed();
    p.display();
    
    
    xPos++;
    
    if(xPos == 1500)
    {
      pushMatrix();
      scale(-1.0,1.0);
      image(guard,-guard.width,0);
      popMatrix();
      xPos--;
    }
    
    
    
 
}
