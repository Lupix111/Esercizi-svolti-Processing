PImage end_world;
int G=127;
boolean filtro=false;
void setup()
{
  size(660,990);
  end_world=loadImage("end_of_the_world.jpg");
  end_world.filter(GRAY);
}

void draw()
{
  if(filtro)
  {
    image(filtro(end_world,G),0,0);
  }
  else
  {
  image(end_world,0,0);
  }
}


PImage filtro(PImage im, int g)
{
  PImage copy=im.copy();
    copy.loadPixels();
    for(int i=0;i<copy.pixels.length;i++)
      {
        if(red(copy.pixels[i])>g)
        {
          copy.pixels[i]=color(255);
        }
        if(red(copy.pixels[i])<=g)
        {
          copy.pixels[i]=color(0);
        }
      }
    copy.updatePixels();
    return copy;
}


void keyPressed()
  {
   if(key=='T'||key=='t')
   {
     filtro=true;
   }
   if(key=='R' || key=='r')
   {
     G--;
   }
   if(key=='Y' || key=='y')
   {
     G++;
   }
   
   println(G);
  }
