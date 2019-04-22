import processing.video.*;
Movie myMovie;
void setup() {
  size(480, 480);
  myMovie = new Movie(this, "dancing.mp4");
  myMovie.play();
}
void draw() {
  background(255);
  if (myMovie.available()) {
    myMovie.read();
  }
  pushMatrix();
  translate(mouseX, mouseY);  
  rotate(radians(map(mouseY, 0, height, 0, 360)));
  //imageMode(CENTER);
  image(myMovie, 0, 0, width/4, height/4);
  popMatrix();
}