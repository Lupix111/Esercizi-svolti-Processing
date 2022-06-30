size(500,500);
background(#ACE2FA);
int a=50;
int b=70;
int c=120;
int d=90;
noStroke();

rectMode(CENTER);
fill(#00FF01);
rect(width/2,height/2+70,2,height/2);

fill(#AF209F);
ellipse(width-200,height-200-60,c,c);
ellipse(width-300,height-300-60,c,c);
ellipse(width-300,height-200-60,c,c);
ellipse(width-200,height-300-60,c,c);


fill(#D83FC7);
ellipse(width-250,height-200-60,d,d);
ellipse(width-200,height-250-60,d,d);
ellipse(width-300,height-250-60,d,d);
ellipse(width-250,height-300-60,d,d);




fill(#FF00E2);
ellipse(width-225,height-225-60,b,b);
ellipse(width-275,height-275-60,b,b);
ellipse(width-275,height-225-60,b,b);
ellipse(width-225,height-275-60,b,b);




fill(#FF0051);
ellipse(width-250,height-250-60,a,a);
