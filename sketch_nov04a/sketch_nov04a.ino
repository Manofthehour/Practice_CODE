#include <Servo.h>
Servo r;
Servo l;
int SPin = 4;
int SPinr = 5;
int SPinl = 6;
int SValue;
int middle;
int right;
int left;



void setup(){
  Serial.begin(9600);
  l.attach(9);
  r.attach(10);
}

void loop(){

//  middle = (RCT(SPin));
  right = (RCT(SPinr));
  left = (RCT(SPinl));


  
  Serial.print(left);
  Serial.print("   ");
  Serial.println(right);

  r.write (0);
  l.write (180);
  delay(15);


  if(RCT(SPinl>SPinr)){
    l.write(90);
    r.write(0);
    delay(15);
  }
  if(RCT(SPinr>SPinl)){
    r.write(90);
    l.write(180);
    delay(15);
  }

}

int RCT(int jay) {
  
  int value = 0;
  pinMode(jay,OUTPUT);
  digitalWrite(jay,HIGH);
  delay(1);

  pinMode(jay,INPUT);
  digitalWrite(jay,LOW);
  while (digitalRead (jay) == HIGH){
  
    value++;
  } 
  return value; 
}






