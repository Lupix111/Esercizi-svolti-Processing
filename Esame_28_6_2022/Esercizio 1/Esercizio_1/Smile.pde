class Smile

{
  float x,y,w,h;
  float vel=random(2,10);      
  color c = color(#FFF705);
  float d=1;
    Smile (float x, float y)
    {
    this.x=x;
    this.y=y;
    h=50;
    w=50;
    }
  


void display()
{
  ellipseMode(CORNER);
  noFill();
  stroke(c);
  strokeWeight(2);
  ellipse(x,y,w,h);
  line(x+15,y+13,x+15,y+23);
  line(x+40,y+13,x+40,y+23);
  line(x+13,y+40,x+40,y+40);
}


void move()
   {
      x+=vel*d;
      if(x>=width)
      {
        d=-1;
      }
      if(x<=0)
      {
        d=1;
      }
     
   }
}
