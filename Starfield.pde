
double Xcoord;
double Ycoord;


class Flower {
  double myX, myY, myDegree, mySpeed, myWidth, myHeight;
  int myColor;
  Flower() {
    myX = Xcoord;
    myY = Ycoord;
    myDegree = (Math.random() * (2 * Math.PI));
    mySpeed = (Math.random()*2);
    myWidth = (Math.random()*16) + 16 ;
    myHeight = (Math.random()*12) + 12;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
    void show() {
       ellipse((float)(myX), (float)(myY - myHeight), (float)(myWidth), (float)(2*myHeight));
       ellipse((float)(myX - myHeight), (float)(myY), (float)(2*myHeight), (float)(myWidth));
       ellipse((float)(myX + myHeight), (float)(myY), (float)(2*myHeight), (float)(myWidth));
       ellipse((float)(myX), (float)(myY + myHeight), (float)(myWidth), (float)(2*myHeight));
       fill(255, 255, 0);
       ellipse((float)(myX), (float)(myY), 5, 5);
       fill(myColor);
}
    void move() {
      myX = myX + mySpeed * Math.cos(myDegree);
      myY = myY + mySpeed + Math.sin(myDegree);
  }
}  

class Butterfly extends Flower {
  
  Butterfly() {
    myX = (Math.random()*200);
    myY = (Math.random()*200);
    myWidth = 5 ;
    myHeight = 5;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
    void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
    fill(0, 0, 0);
    ellipse((float)(myX-2.5), (float)(myY-2.5), (float)2, (float)2);
    ellipse((float)(myX+2.5), (float)(myY-2.5), (float)2, (float)2);
    line((float)(myX-2.5), (float)(myY+2.5), (float)(myX+2.5), (float)(myY+2.5));
    }
    void move() {
      myX = myX + (Math.random()*2);
      myY = myY + (Math.random()*2);
  }
 
  }
Flower[] happy;
void setup() {
  size(400, 400);
  background(173, 216, 230);
  happy = new Flower[40];
   for (int i = 0; i < 25; i++) {
     happy[i] = new Flower();
   }
   for (int i = 25; i < happy.length; i++) {
     happy[i] = new Butterfly();
}
}

void mousePressed() {
   Xcoord = mouseX;
   Ycoord = mouseY;
   setup();
 
  
  

   
}
void draw() {

   background(173, 216, 230);
   for (int i = 0; i < happy.length; i++) {
     happy[i].show();
     happy[i].move();

  }
}
