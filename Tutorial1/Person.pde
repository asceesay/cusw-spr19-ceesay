// this person class will represent people in our class

class Person {
  
  String name;
  String year;
  
  PVector screenLocation;
  boolean locked;
  
  Person(String _name, String _year) {
    name = _name;
    year = _year;
    screenLocation = new PVector(width/2, height/2);
  }
  
    // Arrange my person some angle theta along a circle
  void randomLocation () {
    screenLocation = new PVector(random(width), random(height));
  }
  
  //  float radius = 0.35*height;
  //  screenLocation.x = 0.8*width/2 + radius*sin(theta);
  //  screenLocation.y = height/2 + radius*cos(theta);
  //}
  
  //void randomLocation() {
  //float x = random(0.8*width);
  //  float y = random(height);
  //  screenLocation = new PVector(x, y);
  //}
  
  //see if any mouse cursor is -near- my person
  boolean hoverEvent() {
    
    float xDistance = abs(mouseX - screenLocation.x);
    float yDistance = abs(mouseX - screenLocation.y);
    
    if (xDistance <=15 && yDistance <=15) {
      return true;
    } else {
      return false;
    }
    
  }
  //is my peron selected by the mouse
  boolean checkSelection() {
    if (hoverEvent()) {
      locked = true;
    } else {
      locked = false;
    }
    
    return locked;
  }
  
  // Update location of person if "locked on" with mouse
  void update() {
    if (locked) {
      screenLocation = new PVector(mouseX, mouseY);
    }
}
  void drawPerson() {
    noStroke(); // no circle outline
    
    if (hoverEvent()) {
      fill(#FFFF00);
    } else {

    fill(255); // white fill
    }
    ellipse(screenLocation.x, screenLocation.y, 30, 30);
    
    text(name + "\n" + " Year: " + year, screenLocation.x + 30, screenLocation.y + 30);
    
  }
  
}
