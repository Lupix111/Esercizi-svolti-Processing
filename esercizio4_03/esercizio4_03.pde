//linee
int x1=-800;
int y1=-800;
int x2=0;
int y2=0;

//cubi
int life=400;
int wait=0;
int w=200;
int z=300;




void setup()
{
  size(600,600);
}

void draw()
{
  background(255);
  //asse x
  stroke(0);
  strokeWeight(1);
  line(x1,200,x2,200);
  line(x1,300,x2,300);
  line(x1,400,x2,400);
  //asse y
  line(200,y1,200,y2);
  line(300,y1,300,y2);
  line(400,y1,400,y2);  
  
  x1+=5;
  x2+=5;
  
  y1+=5;
  y2+=5;
  
  if(wait>=400)
  {
    cubo a=new cubo(w,w,100,life);
    cubo b=new cubo(z,z,100,life);
    cubo c=new cubo(w,z,100,life);
    cubo d=new cubo(z,w,100,life);
    a.dis();
    b.dis();
    c.dis();
    d.dis();
    life--;
  }
  wait+=5;
}
