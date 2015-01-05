boolean cr = true;
int x,y,w,h;


void setup(){
  size(1280,800);
  background(0,255,255);
x=30;
y=30;
w=1000;
h=500;
}

void draw(){
fill(random(100,  255),random(100,255),random(100,255));
  if(cr){
  ellipse(random(width),random(height), random(20,90),random(20,90));
}
else{
    rect(random(width),random(height),random(20,90),random(20,90));
}
 
}
void mousePressed(){
     cr=!cr;
}
   

