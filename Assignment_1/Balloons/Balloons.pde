// Begin Ira Edit
//Balloon[] balloons = new Balloon[1000];
ArrayList<Balloon> balloons;
// End Ira Edit

int numOfBalloons = 0;

void setup() {
  size(640, 360);
  frameRate(60);  
  
  // Begin Ira Edit:
  balloons = new ArrayList<Balloon>();
  
  //for(int i = 0; i < balloons.length; i++) {
  //  balloons[i] = new Balloon(random(20, 80));
  //}
  // End Ira Edit
}

void mousePressed() {
  /*
  if (numOfBalloons == 0) {
    numOfBalloons = 10;
  } else {
    numOfBalloons = numOfBalloons + 1;
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(2);
    ellipse(mouseX, mouseY, 20, 20);
  }
  */
  balloons.add(new Balloon(random(20, 80), mouseX, mouseY));
}

void mouseReleased() {
  //ellipse(mouseX, mouseY, 20, 20);

}
void keyPressed() {
  //numOfBalloons = numOfBalloons - 1; 
  balloons.remove(balloons.size()-1);

}
void draw() {
  background(255);
  /*
  for(int i = 0; i < numOfBalloons; i++) {
    balloons[i].ascend();
    balloons[i].display();
    balloons[i].top();
  }
  */
  
  // Check for off screen
  for(int i=balloons.size()-1; i>=0; i--) {
    Balloon b = balloons.get(i);
    if (b.y < -40) {
      balloons.remove(i);
    }
  }
  
  for (Balloon b: balloons) {
    b.ascend();
    b.display();
    b.top();
  }
  
  println(balloons.size());
}
