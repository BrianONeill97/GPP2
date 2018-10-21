CannonBall cB = new CannonBall(250f, 730, 20f);
boolean fired = false;
boolean drawText = false;

int start;


void setup()
{ 
  size(2000, 1000);
}

void draw()
{
  //Create Background
  background(10);


  //Check Key Presses
  if (keyPressed)
  {
    //Checks the Space Key
    if (key == ' ')
    {
      fired = true;
      drawText = true;
      start = millis();
    }
  }

  //Fires the Ball
  if (fired == true)
  {
    cB.fire();
  }

  //Checks for collision with the ground and the walls
  cB.collision();


  cB.display();

  //Creates the ground 
  fill(50, 200, 50);
  rect(0, 750, 2000, 250);

  if (drawText)
  {
    //Timer
    int timer = (millis() - start)/1000;
    text(timer, 20, 20);
  }
}
