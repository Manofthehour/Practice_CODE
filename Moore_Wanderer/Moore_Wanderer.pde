float x;
float y;
float vx;
float vy;
float acx;
float acy;

int sz = 70;

void setup() {
  
  colorMode(HSB,360,100,100,100);
  size(displayWidth, displayHeight);
  x=width/2;
  y=height/2;
  vx=.01;
  vy=.001;
  acx=.001;
  acy=.01;
  vx = constrain(vx, -5, 5);
  vy = constrain(vy, -5, 5);
}

void draw() {
  background(0);
  vx+=acx;
  vy+=acy;
  x+=vx;
  y+=vy;
fill(frameCount%360, 100, 100, 50);
  ellipse(x, y, sz, sz);
  
  if(x+sz/2 < 0) {
    x= width+sz/2;
  }
  if(x-sz/2 > width){
    x= -sz/2;
  }
  if(y+sz/2 < 0){
    y= height+sz/2;
  }
  if(y-sz/2 > height){
    y= -sz/2;
  }
}

void mousePressed(){
  acx =random(-.1, .1);
  acy =random(-.1, .1);
}

