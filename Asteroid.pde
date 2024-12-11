public class Asteroid extends Floater {
    private double size;
    private double rotationSpeed;

    Asteroid() {
        myColor = color(95, 78, 67);
        myCenterX = Math.random() * 750;
        myCenterY = Math.random() * 750;
        size = Math.random() * 10 + 20;
        myPointDirection = Math.random() * 360;

        rotationSpeed = Math.random() * 6 - 4;

        double directionInRadians = radians((float) myPointDirection);
        myXspeed = Math.cos(directionInRadians) * 2;
        myYspeed = Math.sin(directionInRadians) * 2;
    }

    public void shower() {
        fill(myColor);
        noStroke();

        pushMatrix();
        translate((float) myCenterX, (float) myCenterY);
        rotate((float) radians((float) myPointDirection));
        beginShape();
        vertex(-0.6f * (float) size, -0.8f * (float) size);
        vertex(0.7f * (float) size, -0.4f * (float) size);
        vertex(0.9f * (float) size, 0.5f * (float) size);
        vertex(-0.3f * (float) size, 0.8f * (float) size);
        vertex(-0.8f * (float) size, 0.4f * (float) size);
        endShape(CLOSE);
        popMatrix();

        myPointDirection += rotationSpeed;

        if (myPointDirection >= 360) myPointDirection -= 360;
        else if (myPointDirection < 0) myPointDirection += 360;

        move();
    }

    public void move() {
        myCenterX += myXspeed;
        myCenterY += myYspeed;

        if (myCenterX > width) myCenterX = 0;
        else if (myCenterX < 0) myCenterX = width;
        if (myCenterY > height) myCenterY = 0;
        else if (myCenterY < 0) myCenterY = height;
    }
}
