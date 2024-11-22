public class Spaceship extends Floater{
  Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    xCorners[0] = 8;
    xCorners[1] = -8;
    xCorners[2] = -8;
    xCorners[3] = -2;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 8;
    yCorners[2] = -8;
    yCorners[3] = 0;
    myColor = color(173, 54, 76);
    myCenterX = width/2.0;
    myCenterY = height/2.0;
    myXspeed = 0.0;
    myYspeed = 0.0;
    myPointDirection = 270;
  }
}
