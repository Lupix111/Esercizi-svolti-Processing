float a=0.01;
float b=-0.01;
float QP=QUARTER_PI;
float TAU_QP=TAU-QUARTER_PI;

int x=199;
int y=300;
int temp=1;
int tp2=1;
void setup()
{
size(1000,600);
frameRate(500);
}

void draw()
{
  
  background(0);
  fill(#EEF53E);
  
 
    arc(x,y,200,200,QP+b,TAU_QP+a,PIE);
    fill(0);
    ellipse(x,y-40,30,30);
    a=a+0.01*temp;
    b=b-0.01*temp;
    x=x+tp2;
  
  if(x==800)
  {
    tp2=-1;
    QP=-PI+QUARTER_PI;
    TAU_QP=PI-QUARTER_PI;
  }
  
  if(x==200)
  {
    tp2=1;
    QP=QUARTER_PI;
    TAU_QP=TAU-QUARTER_PI;
  }
  
  

if(a>QUARTER_PI)
{
  temp=-1;
}

if(b>=QUARTER_PI-1)
{
  temp=1;
}


}
