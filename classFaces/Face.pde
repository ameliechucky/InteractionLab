class Face {
  //variables
  float x; 
  float y; 
  float size; 
  color c;
  float stepsX;
  float stepsY;

  //constructor

  Face(float s, float tempX, float tempY) {
    x = tempX;
    y= tempY;
    size = s;
    c = color(random(255), random(255), random(255));
    stepsX = random(-5, 5);
    stepsY = random(-3, 3);
  }

  //methods-functions

  void drawFace() {
    noStroke();
    fill(c);  
    ellipse(x, y, size, size);
    fill(255);
    ellipse(x-size*0.3, y-size*0.1, size*0.05, size*0.05);
    ellipse(x+size*0.3, y-size*0.1, size*0.05, size*0.05);
    arc(x, y, size*0.6, size*0.6, 0, PI);
  }

  void move() {
    x = x+stepsX;
    y = y+stepsY;
  }

  void bounce() {
    if (x > (width-size/2) || x<(0+ size/2)) {
      stepsX = -stepsX;
    }
    if (y > height || y <0) {
      stepsY = -stepsY;
    }
  }
}