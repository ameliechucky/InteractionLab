import processing.video.*;
import processing.sound.*;

int s = 20;

String[] cameras = Capture.list();
Capture cam;
color myColor;
float R, PR;
SinOsc sinOsc;
Env env;
float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.4;
float f;

void setup() {
  size(640, 480);
  cam = new Capture(this, cameras[2]);
  cam.start();
  printArray(cameras);
  sinOsc = new SinOsc(this);
  env  = new Env(this);
}

void draw() {
  background(0);
  if (cam.available()) {
    cam.read();
  }
  myColor = cam.get(width/2, height/2);
  R = red(myColor);
  float d = abs(R-PR);

  f = map(R, 0, 255, 100, 600);
  sustainTime = map(d, 0, 100, 0.001, 1);
  sustainTime = constrain(sustainTime, 0.001, 1);
  println(d);

  for (int x=0; x<width; x=x+s) {
    for (int y=0; y<width; y=y+s) {
      color c = cam.get(x, y);
      float red = red(c);
      float green = green(c);
      float blue = blue(c);
      float factor = map(red, 0, 255, 0.05, 2);
      noStroke();
      fill(red, green, blue, red);
      ellipse(x, y, s*factor, s*factor);
    }
  }

  if (d > 20) {
    sinOsc.play();
    sinOsc.freq(f);
    env.play(sinOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  }
  //image(cam, 0, 0);
  PR = R;
}
void mousePressed() {
}
