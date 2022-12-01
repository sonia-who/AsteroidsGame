Star[] starBackground = new Star[300];
Spaceship ship = new Spaceship();
Asteroid asteroid = new Asteroid();
boolean accelerating = false;

ArrayList <Asteroid> asteroid1 = new ArrayList <Asteroid>();
//your variable declarations here

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < starBackground.length; i++) {
    starBackground[i] = new Star();
  }
  
  for(int i = 0; i < 5; i++) {
    asteroid1.add(new Asteroid());
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
  
  for(int i = 0; i < asteroid1.size(); i++) {
    asteroid1.get(i).show();
    asteroid1.get(i).move();
    float d = dist((float)ship.getMyCenterX(), (float)ship.getMyCenterY(), (float)asteroid1.get(i).getMyCenterX(), (float)asteroid1.get(i).getMyCenterY());
    if(d < 10) {
      asteroid1.remove(i);
    }
  }
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
    
    accelerating = true;
  }
  
  if(key == 's' || key == 'S') {
    ship.accelerate(-0.75);
  }
  
}

public void keyReleased(){
  accelerating = false;
}
