color c;
float x;
float speedX = 2;
float y;
float speedY = 4;
void setup() {
  //this is the size of the background
  size(600, 600);
  //this is the color of my background
  background(255);
  c = color(random(255), random(255), random(255));
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  //character drawing
  //face
  fill(c);
  stroke(0);
  strokeWeight(1);
  ellipse(x, y, 200, 200);
  //eyes
  fill(0, 0, 0);
  noStroke();
  ellipse(x-60, y, 20, 20);
  ellipse(x+60, y, 20, 20);
  //mouth
  arc(x, y+20, 60, 60, 0, PI);
  //end character drawing
  
  //change position
  x = x + speedX;
  y = y + speedY;
  // check boundaries
  if (x>width-100 || x<0+100) {
    speedX=-speedX;
  }
  if (y>height-100 || y<0+100) {
    speedY=-speedY;
  }
}
