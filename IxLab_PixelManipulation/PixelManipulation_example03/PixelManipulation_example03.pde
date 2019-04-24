size(500, 300);
noStroke();
int rectSize = 20;

for (int x=0; x<width; x+= rectSize) {
  for (int y=0; y<height; y+= rectSize) {
    fill(random(255), random(255), random(255));
    rect(x, y, rectSize, rectSize);
  }
}