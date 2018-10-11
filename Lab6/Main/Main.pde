CannonBall cB = new CannonBall(1000f,500f,90f);

void setup()
{
  size(2000,1000);
}


      


void draw()
{
  background(10);
  cB.updateGrav();
  
  
  cB.display();
}
