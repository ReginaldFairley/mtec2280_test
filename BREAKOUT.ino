const int buttonPin_1 = 19;
const int buttonPin_3 = 21;

bool buttonRead_1 = 0;
bool buttonRead_3 = 0;

int lastTime = 0;
int currentTime = 0;
int timerInterval = 20;

void setup() {
  pinMode(buttonPin_1, INPUT_PULLUP);
  pinMode(buttonPin_3, INPUT_PULLUP);

  Serial.begin(115200);
}

void loop() {
  currentTime = millis();
  
  if (currentTime - lastTime >= timerInterval) {
    lastTime = currentTime;

    // Read buttons
    buttonRead_1 = digitalRead(buttonPin_1);
    buttonRead_3 = digitalRead(buttonPin_3);

    // Send button values in one line: "1,0" or "0,1", etc.
    Serial.print(buttonRead_1);
    Serial.print(",");
    Serial.println(buttonRead_3);
  }
}
