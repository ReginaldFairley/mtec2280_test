

const int LED1 = 42;
const int LED2 = 37; 
const int LED3 = 46; 
const int LED4 = 19; 

const int buttonPin = 8;

int LEDState = LOW;         
int buttonState = LOW;       
int lastButtonState = LOW;

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

  digitalWrite (LED1, LOW);
  digitalWrite (LED2, LOW);
  digitalWrite (LED3, LOW);
  digitalWrite (LED4, LOW);

if (buttonState == HIGH && lastButtonState == LOW) { //check for button transition
  LEDState = HIGH; //assign opposite value of LEDState to new LEDState
} else { 
  LEDState = LOW;
}  

lastButtonState = buttonState;

if (LEDState == HIGH) {
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
  } else {
    delay(10);
    digitalWrite (LED1, LOW);
    digitalWrite (LED2, LOW);
    digitalWrite (LED3, LOW);
    digitalWrite (LED4, LOW);
  }
}
