PImage Og;
PImage NW;
PImage NE;
PImage SE;
PImage SW;
PImage temp;
void setup()
{
  size(800,800);
  Og=loadImage("teschio.jpg");
  NW=createImage(400,400,RGB);
  NE=createImage(400,400,RGB);
  SE=createImage(400,400,RGB);
  SW=createImage(400,400,RGB);
  NW=Og.get(0,0,400,400);
  NE=Og.get(400,0,800,400);
  SE=Og.get(0,400,400,800);
  SW=Og.get(400,400,800,800);
}

void draw()
{
  image(NW,0,0);
  image(NE,400,0);
  image(SE,0,400);
  image(SW,400,400);
}

void keyPressed()
{
  if(key=='1')
  {
    temp=NW;
    NW=NE;
    NE=temp;
  }
  if(key=='2')
  {
    temp=NE;
    NE=SE;
    SE=temp;
  }
  if(key=='3')
  {
    temp=SE;
    SE=SW;
    SW=temp;
  }
  if(key=='4')
  {
  temp=NW;
  NW=SW;
  SW=temp;
  }
}
