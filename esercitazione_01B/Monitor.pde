class Monitor
{
  float x,y,w,h;
  float vel=random(-5,5);
  color c=color(random(255),random(255),random(255));
  color comp=color(red(255-c),green(255-c),blue(255-c));
  Monitor(float x, float y, float h)
  {
    this.x=x;
    this.y=y;
    this.h=h;
    this.ratio43();
  }
  
  void ratio43()
  {
     w=h*1.33;
  }
  
  void ratio169()
  {
    w=(h*16)/9;
  }
  
  void display()
  {
    fill(c);
    stroke(comp);
    strokeWeight(5);
    rect(x,y,w,h);
  }
  
  void move()
  {
    x=x+vel;
    if(x>width)
    {
      x=0;
    }
    if(x<0)
    {
      x=width;
    }
  }
}
