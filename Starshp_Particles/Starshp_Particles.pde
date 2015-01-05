ArrayList <Bullet> bullets = new ArrayList <Bullet>();

PImage Starship;
PImage Space;
PImage meteor; 

//Meteors in SPAAAACCCEEE!!!
int num = 25;
PVector[] point = new PVector[num];
PVector[] v = new PVector[num];
PVector[] ac = new PVector[num];
float[] sz = new float[num];
float[] ms = new float[num];

int minDiam = 30;
int maxDiam = 40;


void setup() {
  Starship = loadImage("fighter-01.png");
  Space = loadImage("unnamed.jpg");
  meteor = loadImage("disonerock.png");
  size(Space.width, Space.height);
  for (int m=0; m<num; m++) {
    sz[m]= random(minDiam, maxDiam);
    v[m]= PVector.random2D();
    point[m]= new PVector(random(sz[m], width-sz[m]), random(sz[m], height-sz[m]));
    ac[m]= new PVector(0, 0);
    ms[m]= map(sz[m], minDiam, maxDiam, .1, 1.5);
  }
  //noCursor();
}

void draw() {
  background(Space);
  for (int i=0; i < num; i++) {
    v[i].add(ac[i]);
    point[i].add(v[i]);


    for (int m=0; m < num; m++) {
      if (i!=m) {
        if (point[i].dist(point[m]) < sz[i]/2 + sz[m]/2) {
          v[i] = PVector.sub(point[i], point[m]);
          v[i].normalize();
          v[i].div(ms[i]);
        }
      }
    }

    for (int j = bullets.size ()-1; j>=0; j--) {
      Bullet b = bullets.get(j);
      b.display();
      b.move();
    } 

    image(Starship, mouseX, mouseY);
    image(meteor, point[i].x, point[i].y, sz[i], sz[i]);


    if (point[i].x + sz[i]/2 > width || point[i].x - sz[i]/2 < 0) {
      v[i].x*=-1;
    }
    if (point[i].y + sz[i]/2 > height || point[i].y -sz[i]/2 < 0) {
      v[i].y*=-1;
    }
  }
}

void mousePressed() {
  bullets.add(new Bullet(mouseX+Starship.width/2, mouseY+Starship.height/2, 0, -2, 0, 0, 5));
}

