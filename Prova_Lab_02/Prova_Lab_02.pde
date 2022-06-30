//gray=0.3*RED+0.5*GREEN+0.2*BLUE
boolean tasto=false;

PImage FVTr;
PImage FVTg;
PImage FVTb;

color temp;
int tempc=0;

PImage FVTc;

void setup()
{
  size(1280,720);
  FVTr=loadImage("free_vatnik_tanks.jpg");
  FVTg=loadImage("free_vatnik_tanks.jpg");
  FVTb=loadImage("free_vatnik_tanks.jpg");
  
  FVTc=loadImage("free_vatnik_tanks.jpg");
  
}

void draw()
{
  if(tasto)
  {    
    filtroR(FVTr,640,0);
    filtroG(FVTg,0,360);
    filtroB(FVTb,640,360);
    imgYUV(FVTr,FVTg,FVTb,FVTc,0,0);
  }
  else
  {
    image(FVTc,0,0,width,height);
  }
}

//sezione con i vari filtri dedicati ai singoli colori
void filtroR(PImage im, int x, int y)
{
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    tempc=int(red(copy.pixels[i]));
    temp=color(tempc,tempc,tempc);
    copy.pixels[i]=temp;
  }
  copy.updatePixels();
  image(copy,x,y);
}

void filtroG(PImage im, int x, int y)
{
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    tempc=int(green(copy.pixels[i]));
    temp=color(tempc,tempc,tempc);
    copy.pixels[i]=temp;
  }
  copy.updatePixels();
  image(copy,x,y);
}

void filtroB(PImage im, int x, int y)
{
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    tempc=int(blue(copy.pixels[i]));
    temp=color(tempc,tempc,tempc);
    copy.pixels[i]=temp;
  }
  copy.updatePixels();
  image(copy,x,y);
}

//funzione per l'immagine con spaziocolore YUV, non potevo usare filter(GRAY) secondo il testo  dell'esercizio
void imgYUV(PImage R, PImage G, PImage B, PImage im, int x, int y)
{
  float r;
  float g;
  float b;
  int gray=0;
  color gr;
  R.loadPixels();
  G.loadPixels();
  B.loadPixels();
  PImage copy=im.copy();
  copy.loadPixels();
  for(int i=0;i<copy.pixels.length;i++)
  {
    r=0.3*(red(R.pixels[i]));
    g=0.5*(green(G.pixels[i]));
    b=0.2*(blue(B.pixels[i]));
    gray=int(r+g+b);
    gr=color(gray,gray,gray);
    copy.pixels[i]=gr;
  }
  copy.updatePixels();
  image(copy,x,y);
}

void keyPressed()
{
  if(key=='A' || key=='a')
  {
    tasto=true;
  }
}
