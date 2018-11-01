class Target
{
  PVector pos;
  
  float targetWidth;
  float targetHeight;
  
  Target(float x, float y, float w, float h)
  {
   pos = new PVector(x,y);
   targetWidth = w;
   targetHeight = h;

  }

  void drawTarget()
  {
    fill(0,150,100);
    ellipse(pos.x,pos.y,targetWidth,targetHeight);
  }
  
  
}
