PImage img;
void setup(){
  size(600, 404);
  img = loadImage("hokusai.jpg");
}
void draw(){
  noStroke();
  int rectSize = 20;
  int w = img.width;
  int h = img.height;
  img.loadPixels();
  for (int y = 0; y < h; y=y+rectSize) {
  for (int x = 0; x < w; x=x+rectSize) {
      int i =  x + y*w;
      fill( img.pixels[i] );
      rect(x, y, rectSize, rectSize);
    }
  }
  img.updatePixels();
}