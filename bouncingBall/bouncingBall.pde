int x = 0;
int y = 0;
int w = 50;
int Xspeed = 1;
int Yspeed = 3;

void setup() {
  size(320, 240);
}
void draw() {
  background(0);
  ellipse(x, y, w, w);
  if(x>width || x<0){
    Xspeed = -Xspeed;
  }
  if(y>height || y<0){
    Yspeed = -Yspeed;
  }
   x = x+Xspeed;
  y = y+Yspeed;
}