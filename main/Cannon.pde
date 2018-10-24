class Cannon
{
  //For the Rect
  PVector pos;

  //Pos for the ball
  PVector posBall = new PVector(0, 60);
  //Width
  float w;
  //Height
  float h;
  //Round Corners
  float roundCorners;





  float deg = 4.8;
  float gravity = -9.8;

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
      if (keyCode == DOWN)
      {

        deg += 0.03;

        print(deg);
      }

      if (keyCode == UP)
      {
        deg -= 0.03;
      }
    }
    surface.setTitle("Angle="+(deg - 4.8)+"("+degrees(deg - 4.8)+")");

    pushMatrix();
    noStroke();
    translate(20, 480);
    rotate(deg);
    fill(200, 50, 50);
    rect(pos.x, pos.y, w, h, roundCorners);
    popMatrix();
  }

  //float getAngle()
  // {
  //  float angle = atan2(pos.y -height/2, pos.x - width/2);
  //   return angle;
  // }

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
    x = calcBallX(time, 100, deg);
    y = calcBallY(time, 100, deg);
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
    deg = 0;
  }
}
