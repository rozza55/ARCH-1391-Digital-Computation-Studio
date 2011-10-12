

#include <Servo.h> 
 
Servo myservo;  
Servo myservo2;
Servo myservo3;
Servo myservo4;
Servo myservo5;
Servo myservo6;

int minPulse = 600;   
int maxPulse = 2400;  
 
int potpin = 0;  
int val;    
int val2;
int val3;
int val4;
int val5;
int val6;



 
void setup() 
{ 
  myservo.attach(3, minPulse, maxPulse);  
  myservo2.attach(5, minPulse, maxPulse);
  myservo3.attach(6, minPulse, maxPulse);
  myservo4.attach(9, minPulse, maxPulse);
  myservo5.attach(10, minPulse, maxPulse);
  myservo6.attach(11, minPulse, maxPulse);
  
} 
 
void loop() 
{
{ 
  val = analogRead(potpin);            
  val = map(val, 1023, 0, 180, 0);
  myservo.write(val);
} 
{
  val2 = analogRead(potpin);            
  val2 = map(val2, 1023, 0, 180, 0);
  myservo2.write(val2);
}
{
  val3 = analogRead(potpin);            
  val3 = map(val3, 1023, 0, 180, 0);
  myservo3.write(val3);
}
{
  val4 = analogRead(potpin);            
  val4 = map(val4, 1023, 0, 180, 0);
  myservo4.write(val4);
}
{
  val5 = analogRead(potpin);            
  val5 = map(val5, 1023, 0, 180, 0);
  myservo5.write(val5);
}
{
  val6 = analogRead(potpin);            
  val6 = map(val6, 1023, 0, 180, 0);
  myservo6 .write(val6);
}
  
  delay(15);

}


