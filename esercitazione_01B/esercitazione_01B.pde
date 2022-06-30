Monitor m;
NewMonitor nm;
void setup()
{
  size(512,512);
  
  m=new Monitor(10,10,50);
  nm= new NewMonitor(10,height-100,50);
}

void draw()
{
  background(255);
  m.ratio43();
  m.display();
  m.move();
  
  nm.display();
  nm.move();
}



void keyPressed()
{
  if(key=='r' || key=='R')
  {
    setup();
  }
}
