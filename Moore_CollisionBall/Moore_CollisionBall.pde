PVector point, v, ac;
PVector m;

int sz = 150;

void setup() {
  size(displayWidth, displayHeight);
  point=new PVector(width/2, height/2);
  v=PVector.random2D();
  ac=new PVector(0, 0);
  m=new PVector(mouseX, mouseY);
}

void draw() {
  background(0);
  v.add(ac);
  point.add(v);
  ellipse(point.x, point.y, sz, sz);
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);  


if (point.x + sz/2 > width || point.x - sz/2 < 0) {
    v.x*=-1;
 }
if (point.y + sz/2 > height || point.y -sz/2 < 0){
    v.x*=-1;
 }
if(dist(mouseX, mouseY, point.x, point.y) < sz){
  fill(0,255,255);
 }
else{
  fill(0,0,255);
 }
} 
