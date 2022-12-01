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
      myCenterX = 250 + (int)(Math.random() * 100 - 50);
      myCenterY = 250 + (int)(Math.random() * 50 - 25);
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
    
}
