String[]heroes={"Superman","Batman","The Flash","Green Lantern", "WonderWoman","Aquaman","Green Arrow","Martian Manhunter"};

void setup(){
  size(displayWidth,displayHeight);
  background(255,0,0);
}

void draw(){
 for(int n=0; n<8; n++){ 
  textSize(30);
  fill(0,0,255);
  text(heroes[n],10, 40+50*n);
 }
}
