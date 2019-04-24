void setup() {
  size(100, 100);
}
void draw() {
  background(0);
  // this creates one single pixel
  // at 25, 25
  // with the color value 255
  stroke(255);
  point(25, 25);

  // this creates one single pixel
  // at x = 25, y = 75
  // using set(x,y,color)
  color c = color(255,255,255);
  set(25,75,c);
}