PVector point;
PVector v;
PVector ac;


int sz = 70;

void setup() {
  background(0);
  colorMode(HSB,360,100,100,100);
  size(displayWidth, displayHeight);
  point=new PVector (width/2, height/2);
  v=PVector.random2D();
  ac=new PVector(random(-.1,.1),random(-.1,.1));;
  
}

void draw() {
  ac.set(random(-.1,.1),random(-.1,.1));
  v.add(ac);
  v.limit(5);
  point.add(v);
  stroke(frameCount%360,100,100,50);
  fill(frameCount%360, 100, 100, 50);
  ellipse(point.x, point.y, sz, sz);
  
if(point.x+sz/2 < 0) {
    point.x= width+sz/2;
  }
if(point.x-sz/2 > width){
    point.x= -sz/2;
  }
if(point.y+sz/2 < 0){
    point.y= height+sz/2;
  }
if(point.y-sz/2 > height){
    point.y= -sz/2;
  }
}

