void setup() {
  size(600, 600);
  background(255);
  for (int i = 0; i< 10; i++) {
    myFunction(random(width), random(height), random(50, 200), color(random(255), random(255), random(255)));
  }
}
void draw() {
}

void myFunction(float x, float y, float s, color c) {
  noStroke();
  fill(c);  
  ellipse(x, y, s, s);
  fill(255);
  ellipse(x-s*0.3, y-s*0.1, s*0.05, s*0.05);
  ellipse(x+s*0.3, y-s*0.1, s*0.05, s*0.05);
  arc(x, y, s*0.6, s*0.6, 0, PI);
}