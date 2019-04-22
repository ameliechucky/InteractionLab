import processing.video.*;
Movie myMovie;
void setup() {
  size(480, 480);
  myMovie = new Movie(this, "dancing.mp4");
  myMovie.play();
}
void draw() {
  if (myMovie.available()) {
    myMovie.read();
  }
  tint(255, 0, 0); 
  image(myMovie, 0, 0);
}