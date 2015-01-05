int eon = 100;
float[] x = new float[eon];
float[] y = new float[eon];

void setup(){
  colorMode(HSB,360,100,100,100);
  size(1280, 800);
for(int m = 0; m<eon; m++){
  x[m]=random(width);
  y[m]=random(height);
 }
 noStroke();
}

void draw(){
RC();
  background(0);
  x[eon-1]= mouseX;
  y[eon-1]= mouseY;
  
for(int m = 0; m<eon-1; m++){
  x[m]=x[m+1];
  y[m]=y[m+1];
}  
for(int m = eon-1; m>=0; m--){
    fill(map (x[m], 0, width, 0, 360), 100, 100, 100);
    ellipse(x[m],y[m],m+50,m+50);
 }
}

void RC(){
 fill(random(255), random(255), random(255));
  float sz = random(5,100); 
  ellipse(random(width), random(height), sz, sz);
 
}
