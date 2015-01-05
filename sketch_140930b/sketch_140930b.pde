void setup(){
  background(0,0,150);
  size(1280,800);
}

void draw(){
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(width/2, height/2, mouseX, mouseY);
}
