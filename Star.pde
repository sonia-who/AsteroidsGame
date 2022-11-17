class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }
  
  public void show() {
    noStroke();
    fill((int)(Math.random() * 256));
    ellipse(myX, myY, 4, 4);
  }
}

