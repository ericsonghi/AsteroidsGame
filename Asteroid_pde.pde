Spaceship Joe;
distantStars[] stars = new distantStars[50];
ArrayList<Asteroid> asteroids = new ArrayList();
private int time;
private int lastTime;

void setup() {
  lastTime = millis();
  size(750, 750);
  background(0, 0, 0);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new distantStars();
  }
  Joe = new Spaceship();
  asteroids.add(new Asteroid());
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

  if (millis() - lastTime > 5000 && asteroids.size() < 20) {
    asteroids.add(new Asteroid());
    lastTime = millis();
  }

  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid a = asteroids.get(i);
    a.shower();

    float distance = dist((float) Joe.myCenterX, (float) Joe.myCenterY, (float) a.myCenterX, (float) a.myCenterY);
    float collisionDistance = (float) (a.size/2 + 10);
    if (distance < collisionDistance) {
      asteroids.remove(i);
    }
  }
}

  public void keyPressed() {
  if (key == 'w' || key == 'W') { Joe.myYspeed -= 0.3; }
  else if (key == 's' || key == 'S') { Joe.myYspeed += 0.3; }
  else if (key == 'a' || key == 'A') { Joe.myXspeed -= 0.3; }
  else if (key == 'd' || key == 'D') { Joe.myXspeed += 0.3; }
  else if (key == 'q' || key == 'Q') { Joe.myPointDirection -= 4; }
  else if (key == 'e' || key == 'E') { Joe.myPointDirection += 4; }
  else if (key == 'r' || key == 'R') {
    Joe.myCenterX = Math.random() * width;
    Joe.myCenterY = Math.random() * height;
    Joe.myXspeed = 0.0;
    Joe.myYspeed = 0.0;
    Joe.myPointDirection = Math.random() * 360;
    time = 0;
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.remove(i);
    }
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new distantStars();
      }
    }
  }
