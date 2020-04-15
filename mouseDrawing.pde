void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  //draw a line from the previous position of the mouse to the actual position of the mouse
  line(pmouseX, pmouseY, mouseX, mouseY);
}
//clean up the screen
void keyPressed() {
  background(255);
}
