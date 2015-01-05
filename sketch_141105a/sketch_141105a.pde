void setup(){
  size(1280,800);
  
}

void draw(){
  background(0);
  GR(mouseX,mouseY,50);
  
}


void GR(int x, int y, int sz){
fill(0,255,0);
rect(x,y,sz,sz);
println(x,y,sz);
}
