import processing.video.*;
Capture cam;

void setup() {
  size(640, 480);
  background(0);  
  cam = new Capture(this, 640, 480);
  cam.start();
}
void draw() {
  if ( cam.available() ) {
    cam.read();
    cam.loadPixels();
  }
  for (int y = 0; y < cam.height; y++) {
    for (int x = 0; x < cam.width; x++) {
      int index = x + y*cam.width;
      color pixelColor = cam.pixels[index];
      set(x, y, pixelColor);
    }
  }
  cam.updatePixels();
}