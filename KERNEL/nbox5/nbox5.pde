PImage Im;
float n5=1.0/25;              
float[][] nbox5={{n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5}};
                 
                 
  void setup()
{
  size(512,512);
  Im=loadImage("lena.png");
  Im.filter(GRAY); 
  Im=conversione(convol(Im,nbox5));
  
}

void draw()
{
  image(Im,0,0);
}


float[][] convol(PImage im, float[][] K)
{
  float[][] mod=new float[im.height][im.width];
  
  int N=K[0].length;
  int M=K.length;
  PImage tmp;
  float res;
  
  for(int x=0; x<im.width; x++)
  {
    for(int y=0; y<im.height;y++)
    {
      
      tmp=im.get(x-N/2, y-M/2, N, M);
      
      res=0;
      
      for(int p=0; p<N; p++)
      {
        for(int q=0; q<M;q++)
        {
          res=res+green(tmp.get(p,q))*K[q][p];
        }
      }
      
      mod[y][x]=res;     
      
    }
  }
  
  return mod;
}

PImage conversione(float[][] F)
{
  PImage mod=createImage(F[0].length,F.length,RGB);
  
  float res=0;
  for(int x=0; x<mod.width;x++)
  {
    for(int y=0; y<mod.height;y++)
    {
      res=constrain(F[y][x],0,255);
      mod.set(x,y,color(res));
    }
  }
  
  return mod;
}
