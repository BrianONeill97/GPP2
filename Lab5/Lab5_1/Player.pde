class Player
{
  PVector position;
  float xSpeed = 5;
  float ySpeed = 5;

  float radius;

  Player(float x, float y, float r)
  {
    position = new PVector(x, y);
    radius = r;
  }

    void keyPressed()
    {
      if (keyCode ==  UP)
      {
        position.y = position.y - ySpeed;
      }

      if (keyCode ==  DOWN)
      {
        position.y = position.y + ySpeed;
      }

      if (keyCode ==  RIGHT)
      {
        position.x = position.x + xSpeed;
      }

      if (keyCode ==  LEFT)
      {
        position.x = position.x - xSpeed;
      }
    }

  void update()
  {
 

  }



  void display()
  {
    noStroke();
    fill(204);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
