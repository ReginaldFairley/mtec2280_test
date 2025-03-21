

const int LED1 = 42;
const int LED2 = 37; 
const int LED3 = 46; 
const int LED4 = 19; 

const int buttonPin = 2;

void setup() {
  // put your setup code here, to run once:
pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);

pinMode(buttonPin, INPUT); 
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  delay (10); 

if (buttonState == HIGH && lastButtonState == LOW) { //check for button transition
  LEDState = !LEDState; //assign opposite value of LEDState to new LEDState
} else { 

}  

lastButtonState = buttonState;

if (LEDState == 1) {
  digitalWrite(LED1, HIGH);
  delay(1000);

  digitalWrite(LED1, LOW);
  delay(100);


  digitalWrite(LED2, HIGH);
  delay(1000);

  digitalWrite(LED2, LOW);
  delay(100);


  digitalWrite(LED3, HIGH);
  delay(1000);

  digitalWrite(LED3, LOW);
  delay(100);


  digitalWrite(LED4, HIGH);
  delay(1000);

  digitalWrite(LED4, LOW);
  delay(100);
  }
}
