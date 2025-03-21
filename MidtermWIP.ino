int photocellPin = 5;
int photocellReading;

const int LED1 = 11;
const int LED2 = 17; 
const int LED3 = 38; 
const int LED4 = 42; 

int LEDbrightness;
 
void setup() {

  pinMode (LED1, OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (LED3, OUTPUT);
  pinMode (LED4, OUTPUT);

  Serial.begin(9600);   
}
 
void loop() {
  photocellReading = analogRead(photocellPin);  
 
  Serial.print("Analog reading = ");
  Serial.print(photocellReading);
  Serial.print("\n");
 
  if (photocellReading <= 2000) {
    digitalWrite (LED1, LOW);
    digitalWrite (LED2, LOW);
    digitalWrite (LED3, LOW);
    digitalWrite (LED4, LOW);
    delay(1000);
    Serial.print("Analog reading = ");
    Serial.print(photocellReading);
    Serial.print("\n");
    

  } else if (photocellReading >= 3000) {
    digitalWrite (LED1, HIGH);  
    digitalWrite (LED2, LOW);
    digitalWrite (LED3, LOW);
    digitalWrite (LED4, HIGH);
    delay(1000);

    digitalWrite (LED1, LOW);
    digitalWrite (LED2, HIGH);
    digitalWrite (LED3, HIGH);
    digitalWrite (LED4, LOW);
    Serial.print("Analog reading = ");
    Serial.print(photocellReading);
    Serial.print("\n");

  } else {
    digitalWrite (LED1, LOW);
    digitalWrite (LED2, LOW);
    digitalWrite (LED3, LOW);
    digitalWrite (LED4, LOW);
    delay(1000);
    Serial.print("Analog reading = ");
    Serial.print(photocellReading);
    Serial.print("\n");
  }
  delay(1000);
}