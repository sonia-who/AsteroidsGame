class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    
    myPointDirection = theShip.getMyPointDirection();
    accelerate(6);
    
    // myColor = 255;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  
  public void show() {
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public double getMyCenterX() {
    return myCenterX;
  }
  
  public double getMyCenterY() {
    return myCenterY;
  }
  
}
