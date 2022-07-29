ArrayList<Heart> H;
//PImage sp;
int rand;

void setup()
{
  size(512,512);
  frameRate(60);
 // sp=loadImage("space.jpg");
//  set(0,0,sp);

  H= new ArrayList<Heart>();
}
void draw()
{
 // set(0,0,sp);
 fill(#EA216F,25);
 rect(0,0,width,height);
  for(Heart h:H)
  {
    h.display();
    h.move();
    println(h.life);
  }
  
  rand=int(random(0,100));
  if(rand==1 || rand==2 || rand==3 ||rand==4||rand==5)
  {
    H.add(new Heart(random(0,512-60),height+10));
  }
}

void keyPressed()
{
  
  if(key=='r')
  {
   setup(); 
  }
  if(key=='h')
  {
    H.add(new Heart(random(30,500),random(30,500)));
  }
}
