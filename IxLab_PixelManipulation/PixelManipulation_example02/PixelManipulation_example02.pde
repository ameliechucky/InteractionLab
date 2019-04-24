size(500, 300);
noStroke();
int rectSize = 20;

for (int x=0; x<width; x+= rectSize) {
  fill(random(255), random(255), random(255));
  rect(x, 0, rectSize, rectSize);
}