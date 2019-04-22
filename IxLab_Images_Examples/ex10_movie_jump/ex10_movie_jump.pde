import processing.video.*;
Movie myMovie;

void setup() {
  size(480, 480);
  myMovie = new Movie(this, "dancing.mp4");
  myMovie.loop();
}
void draw() {
  if (myMovie.available()) {
    myMovie.read();
  }  

  image(myMovie, 0, 0);
}
void keyPressed() {
  myMovie.jump(random(myMovie.duration()));
}