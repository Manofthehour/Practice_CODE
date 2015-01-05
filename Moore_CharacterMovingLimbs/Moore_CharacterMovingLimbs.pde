int x = 500;
int y = 140;
int speedx = 10;
int speedy = 10;
int x2= 500;
int y2= 140;

void setup() {
size(1024, 720, P2D);
}
void draw() {
  x=x+speedx;
  y=y+speedy;
  background(180, 250, 200);
  noFill();
  rect (x, y, 150, 155, 15);
  triangle (x, y, x+75, y-50, x+150, y);
  stroke (0, 0, 0);
  curve (x+150, y+40, x, y+40, x-50, y+160, x2+80, y2+160);
  curve (x-50, y+40, x+150, y+40, x+190, y+160, x2+150, y2+160);
  ellipse (x+30, y+30, 30, 30);
  ellipse (x+30, y+30, 3, 3);
  ellipse (x+120, y+30, 30, 30);
  ellipse (x+120, y+30, 3, 3);
  curve (x+50, y+215, x+30, y+155, x+30, y+275, x2+50, y2+305);
  curve (x+100, y+215, x+120, y+155, x+120, y+275, x2+100, y2+305); 

if (x>=850){
  speedx=-speedx;
}
if (x<=0){
  speedx=-speedx;
}
if (y>=550){
  speedy=-speedy;
}
if (y<=0){
  speedy=-speedy;
}

if (mousePressed==true){
  x2=x2+10;
  y2=y2+10;
if(x2>=550){
  x2=x2-10;
  y2=y2-10;
if(x2<=450){
  x2=x2+10;
  x2=x+10;
}
}
}
if(mousePressed==false){
  x2=x2;
  y2=y2;
}

}

  








