float x;
float y;
float vx;
float vy;
float acx;
float acy;

int sz = 30;

void setup() {
  colorMode(HSB,360,100,100,100);
  size(1280, 800);
  x=width/2;
  y=height/2;
  vx=0;
  vy=.1;
  acx=0;
  acy=1;
}

void draw() {
  background(0);
  vx+=acx;
  vy+=acy;
  x+=vx;
  y+=vy;
fill(frameCount%360, 100, 100, 50);
  ellipse(x, y, sz, sz);

  if (y+sz/2 > height) {
    y= height-sz/2;
    vy*=-abs(1);
  }
}

