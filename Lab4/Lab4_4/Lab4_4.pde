int MAX_BALLS = 10;
Ball[] balls = new Ball[MAX_BALLS];

void setup()
{
  size(2000, 1000);


  for (int i = 0; i < MAX_BALLS; i++)
  {
    balls[i] = new Ball(random(30, 1970), 700f, 30f);
  }
}


void draw()
{
  background(10);
  for (Ball b : balls)
  {
    b.update();
    b.boundary();
    b.display();
  }

  for (int i = 0; i < MAX_BALLS; i++)
  {
    if (i + 1 < MAX_BALLS)
    {
      balls[i].ballCollision(balls[i + 1]);
    }
  }
}
