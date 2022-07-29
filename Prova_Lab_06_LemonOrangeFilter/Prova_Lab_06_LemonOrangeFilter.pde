PImage I;
int N=101;

void setup()
{
  size(512,512);
  rectMode(CENTER);
  I=loadImage("lena.png");
  I.resize(512,512);
  set(0,0,I);
}

void draw()
{
  background(I);

  noFill();
  rect(mouseX,mouseY,N,N);

}


//////////////////////////


PImage lemonFilter(PImage im)
{
  float r,g,b;
  color c;
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    r=red(copy.pixels[i]);
    g=green(copy.pixels[i]);
    b=blue(copy.pixels[i]);
    c=color(r-(b/8),g+b,0);
    copy.pixels[i]=c;
  }
  copy.updatePixels();
  return copy;
}

PImage orangeFilter(PImage im)
{
  float r,g,b;
  color c;
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    r=red(copy.pixels[i]);
    g=green(copy.pixels[i]);
    b=blue(copy.pixels[i]);
    c=color(r+b,g,0);
    copy.pixels[i]=c;
  }
  copy.updatePixels();
  return copy;
}


PImage applyArea(PImage im, int x, int y, int d, boolean f)
{
  PImage copy=im.get(x-d/2,y-d/2,d,d);
  
  if(f)
  {
    copy=orangeFilter(copy);
    im.set(x-d/2,y-d/2,copy);
    return im;
  }
  
  if(!f)
  {
    copy=lemonFilter(copy);
    im.set(x-d/2,y-d/2,copy);
    return im;
  }
  return copy;
}


void mouseClicked()
{
   if(mouseButton==RIGHT)
   {
     I=applyArea(I,mouseX,mouseY,N,true);
   }
   if(mouseButton==LEFT)
   {
     I=applyArea(I,mouseX,mouseY,N,false);
   }
   
}


void keyPressed()
{
  if(key=='+')
  {
    if(N==151)
    {
      return;
    }
    N+=2;
  }
  if(key=='-')
  {
    if(N==51)
    {
      return;
    }
    N-=2;
  }
  if(key=='r')
  {
    setup();
  }
}
