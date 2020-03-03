float x; //this is a variable declaration
float y;
float speedX = 6;
float speedY = 3;
color c;

void setup() {
  size(600, 600);
  background(255);
  x = width/2; //this is a variable initialization (assigning a value)
  y = height/2;
  c = color(255, 0, 0);
}

void draw() {
  background(255); //paint the background to not see what was there before
  //face code below
  stroke(0);
  fill(c);
  strokeWeight(1);
  ellipse(x, y, 200, 200);
  //eyes code below
  fill(0, 0, 0);
  noStroke();
  ellipse(x-60, y, 20, 20);
  ellipse(x+60, y, 20, 20);
  //mouth code below
  arc(x, y+20, 60, 60, 0, PI);
  
  //change the position to make it move
  x = x+speedX;
  y = y+speedY;

  //check boundaries
  if (x > width-100) {
    speedX = -speedX; //this changes direction
    c = color(random(255), random(255), random(255)); //changes the color 
  }
  if (x < 0+100) {
    speedX = -speedX;
    c = color(random(255), random(255), random(255));
  }
  if (y > height-100) {
    speedY = -speedY;
    c = color(random(255), random(255), random(255));
  }
  if (y < 0+100) {
    speedY = -speedY;
    c = color(random(255), random(255), random(255));
  }
}
