


import processing.sound.*;
int random;
int random2;
int clicked;
PFont f;
String mytext;
Ball pumpy;
Paddle ai;
uPaddle user;
SoundFile file;



void setup() {
  random = (int)(Math.random() * 200 + 1);
  random2 = (int)(Math.random() * 200 + 1);
  frameRate(10);
  size(1000, 1000);
  pumpy = new Ball(10, 15);
  ai = new Paddle(10);
  user = new uPaddle(10);

  file = new SoundFile(this, "spooky music 2.mp3");
  f = createFont("Arial", 12, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 30);
}

void draw() {


  background(0, 0, 0);
  fill(255, 255, 255);
  rect(400, 0, 200, 100);
  pumpy.draw();
  pumpy.move();
  ai.draw();
  ai.move();
  user.move();
  user.draw();

  String myText = "\n ai: " + pumpy.aiPoint + " || user: " + pumpy.userPoint;
  fill(0);
  text( myText, 400.0, 0.0);
}

void mouseClicked() {

  if (clicked == 1) {
    file.stop();
    clicked = 0;
  } else {
    file.play();
    clicked += 1;
  }
}
