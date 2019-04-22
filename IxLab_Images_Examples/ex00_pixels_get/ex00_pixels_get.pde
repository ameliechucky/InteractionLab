PImage img;

void setup() {
  size(600, 404);
  noStroke();
  img = loadImage("hokusai.jpg");
}

void draw() {
  for (int i=0; i<100; i++) {
    int size = int( random(1, 20) );
    int x = int( random(img.width) );
    int y = int( random(img.height) );
    // get the pixel color
    color c = img.get(x, y);
    // draw a circle with the color
    fill(c);
    ellipse(x, y, size, size);
 }
}

void mousePressed() {
  saveFrame("mySketch.png");
}