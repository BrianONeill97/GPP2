  float x;
  float y;
  float x1;
  float y1;
  boolean drawn = false;
  
  String mouseOnePosX;
  String mouseOnePosY;
  
  String mouseTwoPosX;
  String mouseTwoPosY; 
  
  String positions;

  
  int firstPress = 1;

void setup()
{
  size(600,480);
  background(0);


}

void draw()
{
  background(0);

  if(drawn == true)
  {
     line(x,y,x1,y1);
     stroke(255);
     strokeWeight(1);
     textSize(24);
     text(positions,50,60);
     fill(0,255,255,251);
  }


 

}

void mouseClicked()
{
    if(firstPress == 1)
    {
        drawn = false;
        PVector mouseFirst = new PVector(mouseX,mouseY);
        x = mouseFirst.x;
        y = mouseFirst.y;
        firstPress = firstPress - 1;
        
        mouseOnePosX = str(x);
        mouseOnePosY = str(y);
        
    }
  
   else if(firstPress == 0)
    {
       PVector mouseSecond = new PVector(mouseX,mouseY); 
       x1 = mouseSecond.x;
       y1= mouseSecond.y;
       drawn = true;
       firstPress = firstPress + 1;
       
        mouseTwoPosX = str(x1);
        mouseTwoPosY = str(y1);
        
        positions = ("Positions are " + mouseOnePosX + ", " + mouseOnePosY + " and " + mouseTwoPosX + ", " + mouseTwoPosY);
    }

     

}
