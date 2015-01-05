int x = 600;
int y = 0;
int speedx = 10;
int speedy = 10;

void setup(){
  size(1200,800);
  frameRate(75);
}
void draw(){
  background(50, 250, 100);
  fill(2, 200, 255);
  ellipse(x, y, 50, 50);
  x = x + speedx;
  y= y + speedy;
  if (x<0){
    speedx=-speedx;
  }
  if(x>width){
    speedx=-speedx; 
}
  
  if(y>height){
    speedy=-speedy;
  }
  if(y<0){
    speedy=-speedy;
  }
  

}
