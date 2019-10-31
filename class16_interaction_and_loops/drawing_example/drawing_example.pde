float thickness=1;
float red = 255;
float green = 255;
float blue = 255;

void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  strokeWeight(thickness);
  fill(0);
  stroke(red, green, blue);
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
void mousePressed(){
    red = random(255);
    green = random(255);
    blue = random(255);
}
void keyPressed(){
    if (key==CODED){
    if(keyCode==UP){
      thickness= thickness+1;
    }
    if (keyCode==DOWN){
      thickness= thickness-1;
    }
  }
}
