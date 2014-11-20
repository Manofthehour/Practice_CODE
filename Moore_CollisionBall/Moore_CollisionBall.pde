int num = 100;
PVector[] point= new PVector[num];
PVector[] v= new PVector[num];
PVector[] ac= new PVector[num];
float[] sz= new float[num];


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(displayWidth, displayHeight);
  for (int i=0; i < num; i++) {  
    sz[i]= random(10, 30);
    point[i]=new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    v[i]=PVector.random2D();
    ac[i]=new PVector(0, 0);
  }
  noCursor();
}

void draw() {
  background(0);
  for (int i=0; i < num; i++) {
    v[i].add(ac[i]);
    point[i].add(v[i]);

    for (int m=0; m < num; m++) {
      if (i!=m) {
        if (point[i].dist(point[m]) < sz[i]/2 + sz[m]/2) {
          if (point[i].x < point[m].x) {
            v[i].x= -abs(v[i].x);
            v[m].x= abs(v[m].x);
          } else {
            v[i].x = abs(v[i].x);
            v[m].x= -abs(v[m].x);
          }
          if (point[i].y < point[m].y) {
            v[i].y= -abs(v[i].y);
            v[m].y= abs(v[m].y);
          } else {
            v[i].y= abs(v[i].y);
            v[m].y= -abs(v[m].y);
          }
        }
      }
    }
    fill(frameCount%360, 100, 100, 30);
    noStroke();
    ellipse(point[i].x, point[i].y, sz[i], sz[i]);  


    if (point[i].x + sz[i]/2 > width || point[i].x - sz[i]/2 < 0) {
      v[i].x*=-1;
    }
    if (point[i].y + sz[i]/2 > height || point[i].y -sz[i]/2 < 0) {
      v[i].y*=-1;
    }
  }
}

void mouseReleased() {
  point[0].set(mouseX,mouseY);
}
