class Spaceship extends Floater {   
    //The coordinates of the corners, with center of
    //object at (0,0) and myPointDirection=0 (right)    

    Spaceship() {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners]; 
      xCorners[0] = -8;
      yCorners[0] = -8;
      
      xCorners[1] = 16;
      yCorners[1] = 1;
      
      xCorners[2] = -8;
      yCorners[2] = 8;
      
      xCorners[3] = -2;
      yCorners[3] = 0;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      
      myColor= 255;
    }

    public void hyperspace() {
       myXspeed = 0;
       myYspeed = 0;
       
       myCenterX = (int)(Math.random() * 500);
       myCenterY = (int)(Math.random() * 500);
       
       myPointDirection = (int)(Math.random() * 360);
    }
    
    // TRYING TO OVERIDE SHOW FROM FLOATER TO GET FIRE COMING OUT OF ROCKET
    public void show() {      
      if(accelerating == true) {
        //translate the (x,y) center of the ship to the correct position
        translate((float)myCenterX, (float)myCenterY);
    
        //convert degrees to radians for rotate()     
        float dRadians = (float)(myPointDirection*(Math.PI/180));
        
        //rotate so that the polygon will be drawn in the correct direction
        rotate(dRadians);
        
        fill(250,175,45);
        noStroke();
        beginShape();
        vertex(-25, -10);
        vertex(-5, 0);
        vertex(-25, 10);
        vertex(-15, 5);
        vertex(-25, 0);
        vertex(-15, -5);
        endShape(CLOSE);
        
        rotate(-1*dRadians);
        translate(-1*(float)myCenterX, -1*(float)myCenterY);
      }
      super.show();
    }
   
    public double getMyCenterX() {
      return myCenterX;
    }
    
    public double getMyCenterY() {
      return myCenterY;
    }
  
    public double getMyXspeed() {
    return myXspeed;
    }
  
    public double getMyYspeed() {
    return myYspeed;
    }
  
    public double getMyPointDirection() {
    return myPointDirection;
    }
}
