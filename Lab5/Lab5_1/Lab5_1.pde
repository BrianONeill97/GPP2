  Player p = new Player(1000f,500f,90f);

/* @pjs preload="Sprites/guard.png"; */

PImage guard;



float xPos;
float yPos;

PVector facing;

boolean moveLeft = false;
boolean moveRight = true;


void setup()
{
  size(2000,1000);
  
  guard = loadImage("Sprites/guard.png");
  
  image(guard,xPos,yPos);

  
  xPos = 750;
  yPos = 500;

}

 void keyPressed()
  {
     p.update();
  }

void draw()
{
  
    background(10);
    

    
    p.display();
   
    
    if(moveRight == true && moveLeft == false)
    {
        xPos += 5;
        image(guard,xPos,yPos);
    }
    else if(moveRight == false && moveLeft == true)
    {
        xPos -= 5;
      pushMatrix();
      translate(xPos + guard.width,yPos);
      scale(-1.0,1.0);
      image(guard,0,0);
      popMatrix();
    }
  
    
    if(xPos == 1500)
    {
      moveRight = false;
      moveLeft = true;      
    }
    
    if(xPos == 0)
    {
      moveRight = true;
      moveLeft = false;
    }
    
   
    
   
    
    
    
 
}

 double fov()
    {
      PVector temp = new PVector(0,0);
      PVector tempTwo = new PVector(p.position.x,p.position.y);
      temp  = tempTwo.sub(xPos,yPos);
      double dP = facing.dot(temp);
      return dP;
    }
