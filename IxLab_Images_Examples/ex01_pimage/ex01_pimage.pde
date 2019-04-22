PImage photo;

void setup() {
  size(550, 380);
  photo = loadImage("pipi.jpeg");
}

void draw() {
  image(photo, 0, 0);
}