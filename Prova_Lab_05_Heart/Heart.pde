class Heart
{
  int q=15344;
  float x,y;
  float velX= random(-5,5);
  float velY= random(-3,-7);
  boolean life=true;
  
 Heart(float x, float y) 
  {
    this.x=x;
    this.y=y;
  }
  
  int f(int q)
  {
    return (q%21)/80;
  }
  
  void display()
  {
    fill(120);
    stroke(#2A2183);
    rect(x,y,60,60);
    fill(255,0,0);
    if(!life)
    {
      fill(0);
    }
    
    beginShape();
    bezier(x+30,y+50,x+10,y+30,x+15,y,x+30,y+20);
    bezier(x+30,y+50,x+50,y+30,x+45,y,x+30,y+20);
    endShape();
    
    if(mousePressed==true)
    {
      if(mouseX>=x && mouseX<=x+60 && mouseY>=y && mouseY<=y+60)
      {
       this.life=false; 
       velX=0;
       velY=0.1+f(q);
      }
    }
  }
  
  void move()
  {
    x+=velX;
    y+=velY;
  }
  
  

  
}
