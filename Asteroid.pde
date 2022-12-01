class Asteroid extends Floater {
  private double speedRotation;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = 255;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myXspeed = (int)(Math.random() * 3 + 1);
    myYspeed = (int)(Math.random() * 3 + 1);
    myPointDirection = 255;
    speedRotation = (int)(Math.random() * 10) - 5;
  }
  
  public void move() {
    turn(speedRotation);
    // calling the member method of the parent class
    super.move();
  }
  
}
