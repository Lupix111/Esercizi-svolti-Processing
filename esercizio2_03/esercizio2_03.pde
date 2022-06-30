int a=0;
int b=150;
int c=300;
int d=450;

void setup()
{
  size(500,500);
}


void draw()
{
  background(0);
  
  cerchio(width/2,height/2,a);
  cerchio(width/2,height/2,b);
  cerchio(width/2,height/2,c);
  cerchio(width/2,height/2,d);

  if(a>=700)
  {
    a=0;
  }
    if(b>=700)
  {
    b=0;
  }
    if(c>=700)
  {
    c=0;
  }
    if(d>=700)
  {
    d=0;
  }
  a++;
  b++;
  c++;
  d++;

  //if(i==400)
  //{
  //  i=0;
  //  c=new cerchio(width/2,height/2,i++);
  //}
}


void cerchio(int a, int b, int c)
 {
   noFill();
   stroke(255);
   strokeWeight(3);
   ellipse(a,b,c,c);
 }
