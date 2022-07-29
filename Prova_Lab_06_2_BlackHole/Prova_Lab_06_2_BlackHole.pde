BlackHole B;
float N=25;
ArrayList<Asteroid> A;

void setup()
{
  size(512,512);
  B=new BlackHole();
  
}

void draw()
{
  background(200);
  B.display(mouseX,mouseY,25);
  
}
