
  

float[] randomCounts;
color[] colorArray;

void setup() {
  size(1024,768);
  randomCounts = new float[20];
  colorArray = new color[20];

 for (int x = 0; x < randomCounts.length; x++) {
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    colorArray[x] = color(r,g,b);
  }

}

void draw()
{
      background(255);


 
  
    // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  float val = randomGaussian();
  float sd = 2;                  // Define a standard deviation
  float mean = 10;           // Define a mean value (middle of the screen along the x-axis)
  int x = (int)( val * sd  + mean);  // Scale the gaussian random number by standard deviation and mean
 
 

 if (x < 0)
 {
   x = 0;
 }
 
 if (x > 19)
 {
   x = 19;
 }
 

  // Pick a random number and increase the count

  randomCounts[x]++;
   
  int w = width/randomCounts.length;

  for (int i = 0; i < randomCounts.length; i++) 
  {
    fill(colorArray[i]);
    rect(i*w,height-randomCounts[i],w-1,randomCounts[i]);
  }  
}
