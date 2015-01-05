int count = 0;
int x = 512;
int y = 360;
int pv=20;
int o = 512;
int p = 360;
int sp = 200;
void setup(){
  size(1024, 720);
}
void draw (){
  rect(x, y, 120, 80);
  if(mouseX >= 572 && mouseY >= 400){
    x = 240;
    y = 140;
  }
}

