float x = 0;
float y = 0;
float Xspeed = 5;
float Yspeed = 3;

float red = 255;
float green = 255;
float blue = 255;

void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  noStroke();
  fill(0, 0, 0, 50);
  rect(0,0, width, height);
  fill(red, green, blue);
  //if(keyPressed){
  //  fill(random(255), random(255), random(255));
  //}
  ellipse(x, y, 50, 50);
  if(x > width || x <0){
    Xspeed = -Xspeed;
  }
    if(y > height || y <0){
    Yspeed = -Yspeed;
  }
  x = x+Xspeed;
  y = y+Yspeed;
}

void keyPressed(){
    red = random(255);
    green = random(255);
    blue = random(255);
    
}
