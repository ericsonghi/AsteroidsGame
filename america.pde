public class america extends Floater {
  private int size;

  public america() {
    size = 2;
    myCenterX = Joe.myCenterX;
    myCenterY = Joe.myCenterY;
    myPointDirection = Joe.myPointDirection - 90;

    double radians = Math.toRadians(myPointDirection);
    myXspeed = Math.cos(radians)*5;
    myYspeed = Math.sin(radians)*5;
  }

  public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse((float) myCenterX, (float) myCenterY, size, size);
  }

  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
