  Player p = new Player(1000f,500f,30f);


void setup()
{
  size(2000,1000);
  
  

}

void draw()
{
  
    background(10);


    p.update();
    p.display();
  
}
