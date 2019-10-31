//int x = 0; this was for the while loop
int size = 5;
void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  noStroke();
  //while (x < width/2) {
  //  line(x, 0, x, height/2);
  //  x = x + 10;
  //}
  for (int x=0; x < width; x = x + size) {
    //line(x, 0, x, height/2);
    for (int y=0; y < height; y = y + size) {
      fill(random(255), random(255), random(255));
      rect(x, y, size, size);
    }
  }
}
