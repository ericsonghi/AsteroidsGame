public class Spaceship extends Floater {
  private final double SpeedMax = 5.0;

  Spaceship() {
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = 0;
    xCorners[1] = -10;
    xCorners[2] = -5;
    xCorners[3] = 5;
    xCorners[4] = 10;

    yCorners[0] = -15;
    yCorners[1] = 10;
    yCorners[2] = 5;
    yCorners[3] = 5;
    yCorners[4] = 10;

    myColor = color(173, 54, 76);
    myCenterX = width / 2.0;
    myCenterY = height / 2.0;
    myXspeed = 0.0;
    myYspeed = 0.0;
    myPointDirection = 0;
}


  public void move() {
    if (myXspeed > SpeedMax){myXspeed = SpeedMax;} 
    else if (myXspeed < -SpeedMax){myXspeed = -SpeedMax;}

    if (myYspeed > SpeedMax){myYspeed = SpeedMax;}
    else if (myYspeed < -SpeedMax) {myYspeed = -SpeedMax;}
    super.move();
  }

  public void accelerate(double dAmount) {
    super.accelerate(dAmount);
    move();
  }
}
