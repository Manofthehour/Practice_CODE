void setup(){ 
  size(1280, 800);
}

void draw(){
  println("The answer is" + QF(9,16,4) + "and" + QF2(9,16,4));

}

float QF (float a, float b, float c){
  float result;
    result = (-b - sqrt(b*b - 4*a*c)/2*a);
    return result; 
}

float QF2 (float a, float b, float c){
  float result2;
    result2 = (-b + sqrt(b*b - 4*a*c)/2*a);
    return result2;
}


