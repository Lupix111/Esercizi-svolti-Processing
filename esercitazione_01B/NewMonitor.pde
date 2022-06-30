class NewMonitor extends Monitor
{
  boolean freeze=false;
  NewMonitor(float x, float y, float h)
  {
    super(x,y,h);
    this.ratio169();
  }
  
  void display()
  {
    fill(0,255,0);
    stroke(125);
    rect(x,y,h,w);
  }
  
  void move()
    {
    if(!freeze)
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
    
    
    if(mouseX >= x && mouseX <= x + w/2 && mouseY >= y && mouseY <= y + h*2)
      {
       this.freeze = true;
       fill(0);
       stroke(125);
       rect(x,y,h,w);
       stroke(255);
       line(x,y+h,x+w/2,y+h);

      }
    else this.freeze = false;
  }
  }
  
