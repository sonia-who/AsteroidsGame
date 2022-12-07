Star[] starBackground = new Star[300];
Spaceship ship = new Spaceship();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
boolean accelerating = false;
ArrayList <Asteroid> asteroid1 = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < starBackground.length; i++) {
    starBackground[i] = new Star();
  }
  
  for(int i = 0; i < 10; i++) {
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
  
  for(int i = 0; i < bullet.size(); i++) {
    bullet.get(i).move();
    bullet.get(i).show();
  }
  
  for(int i = bullet.size()-1; i >= 0; i--) {
    for(int y = asteroid1.size()-1; y >= 0; y--) {
       float s = dist((float)bullet.get(i).getMyCenterX(), (float)bullet.get(i).getMyCenterY(), (float)asteroid1.get(y).getMyCenterX(), (float)asteroid1.get(y).getMyCenterY());
        if(s < 10) {
          asteroid1.remove(y);
          bullet.remove(i);
          break;
        }
    }
  }
    
  if(asteroid1.size() == 0) {
    textSize(50);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    textAlign(CENTER, CENTER);
    text("WINNER", 250, 250);
  }
}

public void keyPressed() {
  // hyperspace
  if(key == 'h' || key == 'H') {
    ship.hyperspace();
  }
  
  if(key == 'a' || key == 'A') {
    ship.turn(-15);
    ship.turn(-15);
  }
  
  if(key == 'd' || key == 'D') {
    ship.turn(15);
    ship.turn(15);
  }
  
  if(key == 'w' || key == 'W') {
    ship.accelerate(0.75);
    
    accelerating = true;
  }
  
  if(key == 's' || key == 'S') {
    ship.accelerate(-0.75);
  }
  
  if(key == 'k' || key == 'K') {
    bullet.add(new Bullet(ship));
  }  
}

public void keyReleased(){
  accelerating = false;
}
