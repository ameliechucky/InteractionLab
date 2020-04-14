float x;
float y;
float speedX;
float speedY;
float s;
void setup() {
  size(500, 500);
  background(255);
  x=random(width);
  y=random(height);
  speedX = random(-4, 4);
  speedY = random(-4, 4);
  s = random(50, 200);
}
void draw() {
  background(255);
  face(x, y, s, color(255, 0, 0));
  x = x + speedX;
  y = y + speedY;

  if (x<0 || x>width) {
    speedX = -speedX;
  }
  if (y<0 || y>height) {
    speedY = -speedY;
  }
}

void face(float u, float v, float size, color c) {
  noStroke();
  fill(c);
  ellipse(u, v, size, size);
  fill(255);
  ellipse(u-size*0.3, v, size*0.05, size*0.05);
  ellipse(u+size*0.3, v, size*0.05, size*0.05);
  arc(u, v+size*0.1, size*0.3, size*0.3, 0, PI);
}
