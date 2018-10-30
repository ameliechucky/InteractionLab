int size = 0;
int increment = 3;

void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  noFill();
  strokeWeight(20);
  ellipse(width/2,height/2, size, size);
  size = size + increment;
  if ( size > 300){
    increment = -increment;
  }if((size<150) && (increment<0)){
    increment = -increment;
  }
}