//your code here
Particle[] p = new Particle[1000];
Particle ben = new OddballParticle();
void setup()
{
  size (400,400);
  for (int i = 0; i< p.length; i++) {
    p[i] = new Particle();
  }
  //your code here
}



void draw()
{
  background (0);
  for (int i = 0; i < p.length; i++) {
    p[i].show();
    p[i].move();
  }
  ben.show();
  ben.move();
  //your code here
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myX = 200.0;
    myY = 200.0;
    myAngle = Math.random()*10;
    mySpeed = Math.random()*10;
    myColor = color(255);
  }
  
  void move() {
    double movementX;
    double movementY;
    movementX = Math.cos(myAngle) * mySpeed;
    myX = myX + movementX;
    movementY = Math.sin(myAngle) * mySpeed;
    myY = myY + movementY;
  }
  
  void show() {
    fill(myColor);
    ellipse((float) myX, (float) myY, 10, 10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    myX = 200.0;
    myY = 100.0;
    myAngle = Math.random()*2;
    mySpeed = Math.random()*2;
    myColor = color(255,222,249);
  }
  void show() {
    fill(myColor);
    rect((float) myX, (float) myY, 10, 50);
  }
  //your code here
}
