import processing.video.*;
Capture cam;

void setup() {
  size(640, 480);
  cam = new Capture(this, 640, 480);
  cam.start();
}
void draw() {
  background(0);
  if (cam.available()) {
    cam.read();
    cam.loadPixels();
  }
  int circleSize = 15;
  int w = cam.width;
  int h = cam.height;
  for (int y = 0; y < h; y+=circleSize){
    for (int x = 0; x < w; x+=circleSize) {
      int i =  x + y*w;
      fill( cam.pixels[i] );
       ellipse(x,y,circleSize,circleSize);
    }
  }
  cam.updatePixels();
}