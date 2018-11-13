int faces = 50;
Face f[] = new Face[faces];

void setup() {
  size(600, 600);
  background(255);

  for (int i=0; i<f.length; i++) {
    f[i] = new Face(random(20, 200), random(width), random(height));
  }
}
void draw() {
  // draw five faces here using a loop and arrays
  for (int i=0; i<f.length; i++) {
    f[i].drawFace();
  }

  if (mousePressed) {
    for (int i=0; i<f.length; i++) {
      f[i].bounce();
      f[i].move();
    }
  }
}