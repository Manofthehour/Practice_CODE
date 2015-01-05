int x=0;
int y=0;
int x2=1024;
int y2=720;
int speed=1;
int spd=5;
int speedx;
void setup (){
  size (1024,720);
  frameRate(75);
}
void draw(){
  background(0, 0, 0);
  fill(random(255), random(255), random(255));
  stroke(10);
  line(500, 720, 500, 0);
  rect(x, y, 50, 70);
  x= x+5;
  y= y+5;
  if (y > height){
    x=speed-1;
    y=speed-1;
  }
  while (x>450){
   x=x-2;
  }
}

