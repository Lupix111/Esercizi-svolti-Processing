float c;
float m;
float y;

float r;
float g;
float b;

color clr;

boolean X=false;

PImage test;
PImage temp;
int j=0;
void setup()
{
  size (800,800);
  background(255);
  test=loadImage("road.jpg");  
}

void draw()
{
  if(X==false)
  {
   image(rgb2cmy(test),0,0);
   if(j<1)
   {
     temp=rgb2cmy(test);
     j=+10;
   }
  }
  if(X==true)
  {
   image(cmy2rgb(temp),0,0);
  }
}

PImage rgb2cmy(PImage im)
{
  PImage copy=im.copy();
  copy.loadPixels();
  
  for(int i=0;i<copy.pixels.length;i++)
  {
    r = red(copy.pixels[i]);
    g = green(copy.pixels[i]);
    b = blue(copy.pixels[i]);
    //w = r + g +b;o in alternativa e lo uso con le formule alternative
    c=b+g;
    m=r+b;
    y=r+g;
    clr=color(c,m,y);
    copy.pixels[i]=clr;
  }
  copy.updatePixels();
  return copy;
}

PImage cmy2rgb(PImage im)
{
  PImage copy;
  copy=im.copy();
  
  copy.loadPixels();
  
  for(int i=0;i<copy.pixels.length;i++)
  {
    c = red(copy.pixels[i]);
    m = green(copy.pixels[i]);
    y = blue(copy.pixels[i]);
    
    r=m+y;
    g=y+c;
    b=m+c;
    
    clr=color(r,g,b);
    copy.pixels[i]=clr;
  }
  copy.updatePixels();
  return copy;
  
}


void keyPressed()
{
 if(key=='a')
 {
   X=true;
 }
}
