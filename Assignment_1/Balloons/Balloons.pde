Balloon[] balloons = new Balloon[1000];

int numOfBalloons = 0;

void setup() {
  size(640, 360);
  frameRate(60);  
  for(int i = 0; i < balloons.length; i++) {
    balloons[i] = new Balloon(random(20, 80));
  }
}

void mousePressed() {
  if (numOfBalloons == 0) {
    numOfBalloons = 10;
  } else {
    numOfBalloons = numOfBalloons + 1;
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(2);
    ellipse(mouseX, mouseY, 20, 20);
  }
}

void mouseReleased() {
  ellipse(mouseX, mouseY, 20, 20);

}
void keyPressed() {
  numOfBalloons = numOfBalloons - 1; 

}
void draw() {
  background(255);
  for(int i = 0; i < numOfBalloons; i++) {
    balloons[i].ascend();
    balloons[i].display();
    balloons[i].top();
  }
}
