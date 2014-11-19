PVector point, v, ac;
PVector m;

int sz = 150;

void setup() {
  size(displayWidth, displayHeight);
  point=new PVector(width/2, height/2);
  v=PVector.random2D();
  ac=new PVector(0, 0);
  m=new PVector();
  noCursor();
}

void draw() {
  background(0);
  m.set(mouseX, mouseY);
  v.add(ac);
  point.add(v);
if (point.dist(m) < sz/2) {
    fill(0, 255, 255);
    if (point.x < m.x) {
      v.x= -abs(v.x);
    } else {
      v.x = abs(v.x);
    }
    if (point.y < m.y) {
      v.y= -abs(v.y);
    } else {
      v.y= abs(v.y);
    }
  } else {
    fill(255, 255, 0);
  }
  ellipse(point.x, point.y, sz, sz);
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);  


  if (point.x + sz/2 > width || point.x - sz/2 < 0) {
    v.x*=-1;
  }
  if (point.y + sz/2 > height || point.y -sz/2 < 0) {
    v.x*=-1;
  }
}

