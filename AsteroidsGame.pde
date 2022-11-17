Star[] starBackground = new Star[300];
Spaceship ship = new Spaceship();
//your variable declarations here

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < starBackground.length; i++) {
    starBackground[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starBackground.length; i++) {
    starBackground[i].show();
  }
  
  ship.show();
  ship.move();  
}

public void keyPressed() {
  // hyperspace
  if(key == 'h' || key == 'H') {
    ship.hyperspace();
  }
  
  if(key == 'a' || key == 'A') {
    ship.turn(-45);
  }
  
  if(key == 'd' || key == 'D') {
    ship.turn(45);
  }
  
  if(key == 'w' || key == 'W') {
    ship.accelerate(0.75);
  }
  
  if(key == 's' || key == 'S') {
    ship.accelerate(-0.75);
  }
}
