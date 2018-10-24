class Cannon
{
  //For the Rect
  PVector pos;

  //Pos for the ball
  //Width
  float w;
  //Height
  float h;
  //Round Corners
  float roundCorners;





  float deg = 4.7;
  float gravity = -9.8;
  float initV =80;

  //Used to update the player
  float time = -0.2;
  float TIME_STEP = 0.05;

  //checks to see if its off
  boolean offScreen =false;


  //used to set the 
  float y;
  float x;

  Cannon(float pX, float pY, float wid, float hei, float round)
  {
    pos =new PVector(pX, pY);
    w = wid;
    h = hei;
    roundCorners = round;
  }


  void drawCannon()
  {
    if (keyPressed)
    {
      if (keyCode == RIGHT)
      {

        deg += 0.03;

        print(deg);
      }

      if (keyCode == LEFT)
      {
        deg -= 0.03;
      }


      if (keyCode == UP)
      {

        initV += 1;

        
      }

      if (keyCode == DOWN)
      {
        initV -= 1;
      }
    }
    
    textSize(32);
    text(initV,10,30);
    
    
    surface.setTitle("Angle="+(deg -  4.7)+"("+degrees(deg -  4.7)+")");

    pushMatrix();
    noStroke();
    translate(20, 480);
    rotate(deg);
    fill(200, 50, 50);
    rect(pos.x, pos.y, w, h, roundCorners);
    popMatrix();
  }


  float calcBallX(float time, float initV, float angle)
  {

    return time*initV*sin(angle);
  }

  float calcBallY(float time, float initV, float angle)
  {

    return height - time*initV*cos(angle) - (0.5*gravity)*sq(time);
  }

  void shoot()
  {
    x = calcBallX(time, initV, deg);
    y = calcBallY(time, initV, deg);
    fill(20, 200, 50);
    ellipse(x, y, 30, 30);
    time -= TIME_STEP;
  }

  boolean check()
  {
    if (y > 550)
    {
      return true;
    } else
    {
      return false;
    }
  }

  void reset(float newX, float newY)
  {
    TIME_STEP = 0.05;
    time = -0.2;

    x = newX;
    y = newY;
    deg =  4.7;
  }
}
