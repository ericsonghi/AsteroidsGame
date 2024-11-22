Spaceship Joe;
distantStars[] stars = new distantStars[50];

void setup() {
  size(750, 750);
  background(0, 0, 0);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new distantStars();
  }
  Joe = new Spaceship();
}

void draw() {
  background(0, 0, 0);

  for (int i = 0; i < stars.length; i++) {
    fill(stars[i].getColor());
    noStroke();
    ellipse((float) stars[i].getX(), (float) stars[i].getY(), (float) stars[i].getSize(), (float) stars[i].getSize());
  }
  Joe.move();
  Joe.show();
}

public void keyPressed() {
  if (key == 'w' || key == 'W') {Joe.myYspeed -= 0.3;} 
  else if (key == 's' || key == 'S') {Joe.myYspeed += 0.3;} 
  else if (key == 'a' || key == 'A') {Joe.myXspeed -= 0.3;} 
  else if (key == 'd' || key == 'D') {Joe.myXspeed += 0.3;}
  else if (key == 'q' || key == 'Q') {Joe.myPointDirection -= 4;}
  else if (key == 'e' || key == 'E') {Joe.myPointDirection += 4;}
  else if (key == 'r' || key == 'R') {
    Joe.myCenterX = Math.random() * width;
    Joe.myCenterY = Math.random() * height;
    Joe.myXspeed = 0.0;
    Joe.myYspeed = 0.0;
    Joe.myPointDirection = Math.random() * 360;
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new distantStars();
    }
  }
}
