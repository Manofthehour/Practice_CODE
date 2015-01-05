color c = color(0,200,255);

void setup() {
  noFill();
}

void draw() {
  background(0);
  stroke(c);
  ellipse(mouseX, mouseY, 30, 30);

  //change value of c every 600 frames
  if (frameCount%600 == 0) {
    c = color(random(255), random(255), random(255));
  }
}

