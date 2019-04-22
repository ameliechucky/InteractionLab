import processing.video.*;
Movie myMovie;

void setup() {
  background(0);
  size(480, 480);
  myMovie = new Movie(this, "dancing.mp4");
  myMovie.loop();
}
void movieEvent(Movie movie) {
  myMovie.read();  
}
void draw() {    
  image(myMovie, 0, 0);   
  float newSpeed = map(mouseX, 0, width, 0.1, 5);
  myMovie.speed(newSpeed);
} 