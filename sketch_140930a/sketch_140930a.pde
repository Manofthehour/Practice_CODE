
void setup () {
  size(1024, 720);
  background(0);
}
void draw() {

  for (x = 0; x <= width; x+=10) {
    fill(200,0,0);
    
   if(mouseX>width/3 && mouseX<2*width/3 && mouseY>height/3 && mouseY< 2*height/3){
    background(250,250,0);
    fill(250,0,0);
    ellipse(mouseX, mouseY, 50, 50);
    }
   
   
   else {
    fill(0,0, 250);
  }
 
 
 rect(x, 0, x*40, height);

  }
 
  
  if(mousePressed==true){
    ellipse(o, p, 50, 50);
  p+=sp;

}
if(p>=height){
  p= -sp;
  }
 }

