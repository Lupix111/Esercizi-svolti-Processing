ArrayList<Smile> smil;

void setup()
{
  size(500,500);
  smil=new ArrayList<Smile>();
  
}

void draw()
{
  background(0);
  
  for(Smile b:smil)
  {
   b.display();
   b.move();
  }

}

void mousePressed()
{
  if(mousePressed)
  {
     if(mouseButton==RIGHT)
     {
      smil.add(new Smile(random(30,255),random(30,255)));
     }
   
     if(mouseButton==LEFT)
     {
        smil.add(new MegaSmile(random(30,255),random(30,255)));
     }
  }
  
}

void keyPressed()
{
  if(key=='r' || key=='R')
  {
    setup();
  }
}
