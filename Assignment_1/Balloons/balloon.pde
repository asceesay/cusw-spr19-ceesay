class Balloon {
  float x;
  float y;
  float diameter;
  float yspeed;
  
  Balloon(float tempD) {
    x = random(width);
    y = height;
    diameter = tempD;
    yspeed = random(0.5, 1.0);
  }
  
  Balloon(float tempD, int mX, int mY) {
    x = mX;
    y = mY;
    diameter = tempD;
    yspeed = random(0.5, 1.0);
  }
  
  void ascend() {
   y = y - yspeed;
   x = x + random(-2, 2);
  }
  
   void display() {
   fill(0, 255, 0);
   stroke(0);
   strokeWeight(2);
   ellipse(x, y, diameter, diameter);
   }
   
   void top() {
   y = y - yspeed;
   x = x + random(-2, 2);
 }
}
