int x= 0;
int y= 0;
int x2=720;
int y2=1024;
int x3=0;
int x4=0;
int speed= 1;

void setup (){
  size (1024, 720);
}
void draw(){
  background(255, 255, 255);
  fill (0, 235, 150);
  ellipse (x, y, 50, 50);
  x = x+5;
  y = y+5;
  ellipse (x2, y2, 50, 50);
  x2 = x2-5;
  y2 = y2-5;
  fill(random(255), random(255), random(255));
  ellipse (x3, height/2, 100, 100);
  x3 = x3+2;
  ellipse (x4, 1024, 300, 300);
  x4 = x4+2;
  if (x > width){
    x= speed -1;
    y= speed -1;
  }
  if (y > height){
    y= speed-1;
    x= speed-1;
  }
  if (x2 > width){
    x2= speed-1;
    y2= speed-1;
  }
}
  
