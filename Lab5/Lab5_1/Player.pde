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
  
  
  void display()
  {
    noStroke();
    fill(204);
    ellipse(position.x, position.y, radius*2, radius*2);
  }

 

  void update()
  {
     if (keyCode ==  UP)
    {
      position.y -= ySpeed;
    }

    if (keyCode ==  DOWN)
    {
      position.y += ySpeed;
    }

    if (keyCode ==  RIGHT)
    {
      position.x += xSpeed;
    }

    if (keyCode ==  LEFT)
    {
      position.x -= xSpeed;
    }
  }



}
