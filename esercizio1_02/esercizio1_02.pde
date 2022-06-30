size(1250,300);

fill(#AEC1BE);
strokeWeight(4);

beginShape();
vertex(30,height+10);
vertex(150,225);
vertex(170,140);
vertex(50,30);
vertex(width/2-75,150);
vertex(width/2-300,180);
vertex(width/2-120,200);
vertex(250,230);
vertex(200,height+10);
endShape();

fill(0);
ellipseMode(CENTER);
ellipse(width/2-300,140,20,20);

//1250,300
fill(#FC5252);
strokeWeight(4);
beginShape();
vertex(1250-30,height+5);
vertex(1250-150,215);
vertex(1250-170,130);
vertex(1250-50,20);
vertex(1250-width/2+75,140);
vertex(width/2+300,170);
vertex(1250-width/2+120,190);
vertex(1250-250,220);
vertex(1250-200,height+5);
endShape();

fill(0);
ellipse(width/2+315,130,20,20);
