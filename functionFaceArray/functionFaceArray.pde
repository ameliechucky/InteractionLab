int faces = 50;

float posX[] = new float [faces];
float posY[] = new float [faces];
float size[] = new float [faces];
color c[] = new color [faces];

float speedX[] = new float [faces];
float speedY[] = new float [faces];

void setup() {
  size(600, 600);
  
  
  for(int i=0; i<faces; i++){
    posX[i] = random(width);
    posY[i] = random(height);
    size[i] = random(50, 200);
    c[i] = color(random(255), random(255), random(255));
    speedX[i] = random(-3, 3);
    speedY[i] = random(-3, 3);
  }
  
}

void draw() {
 // draw five faces here using a loop and arrays
 background(255);
 for(int i=0; i<faces; i++){
   myFunction(posX[i], posY[i], size[i], c[i]);
   posX[i] = posX[i]+speedX[i];  
   posY[i] = posY[i]+speedY[i]; 
   if (posX[i]> width || posX[i]<0){
     speedX[i] = -speedX[i];
   }
   if (posY[i]> height || posY[i]<0){
     speedY[i] = -speedY[i];
   }
 }

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