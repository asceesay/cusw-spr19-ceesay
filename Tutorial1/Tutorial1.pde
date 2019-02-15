// step 1: create / allocate memory for person
ArrayList<Person> people;
ArrayList<Connection> frands;


// runs once
void setup() {
  size(800, 600);
    
    people = new ArrayList<Person>();
  
  for(int i=0; i<10; i++){
    Person p = new Person ("Person " + i, str(random(1, 5)));
    p.randomLocation();
    people.add(p);
  }
  
  //who are frands
  for(Person origin: people) {
    for(Person destination: people){
      //
      if(origin.name.equals(destination.name)) {
        if(origin.name.equals(destination.year)) {
          frands.add(new Connection(origin, destination, "frands"));
}
      }
    }
  }
}

// runs repeatedly at 60FPS 
void draw () {
  
  background(0); // black background
  // background(255); white background
  //fill(255); //colours defined based on the byte sizes
  //ellipse(mouseX, mouseY, 50, 10*mouseY/100);
  //draw ira
  for (Person p: people){
    p.update();
    p.drawPerson();
  }
}
//

// This function runs whenever a mouse button is pressed down
void mousePressed() {
  // Checks to see if you clicked a person
  for (Person p: people) {
    if (p.checkSelection() ) { 
      break;
    }
  }
}

// This function runs whenever a mouse button is released
void mouseReleased() {
  // Unselect all People
  for (Person p: people) {
    p.locked = false;
  }
}
