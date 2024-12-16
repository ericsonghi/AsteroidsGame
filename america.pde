public class america extends Floater {
  private int size;

  public america() {
    size = 2;
    myCenterX = Joe.myCenterX;
    myCenterY = Joe.myCenterY;
    myPointDirection = Joe.myPointDirection - 90;

    double rads = radians((float) myPointDirection);
    myXspeed = Math.cos(rads)*5;
    myYspeed = Math.sin(rads)*5;
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
