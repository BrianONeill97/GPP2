
void setup()
{
  size(640, 480);

  background(0);
}


void draw()
{     
  create();
}

void create()
{
float rad = random(100);
  ellipse(random(640), random(480), rad, rad);
  fill(random(255), random(255), random(255));
}
