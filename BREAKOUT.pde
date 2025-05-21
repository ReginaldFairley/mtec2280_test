import java.util.Scanner; 
import processing.serial.*;

Serial myPort;
String serialData = "";
int buttonRead_1 = 0; // Move left
int buttonRead_3 = 0; // Move right

Ball ball;
Paddle paddle;
Block[][] block;

void setup(){
  // Screen
  size(900, 500);
  
  // Arduino
  println(Serial.list()); // list serial ports
  myPort = new Serial(this, Serial.list()[1], 115200); // adjust index if needed
  myPort.bufferUntil('\n');
  
  // Interactives
  ball = new Ball();
  paddle = new Paddle();
  block = new Block[6][3];
  for(int i = 0; i < block.length; i++){
    for(int j = 0; j < block[0].length; j++){
      block[i][j] = new Block(j,i,block.length);
    }
  }
}

void draw(){
  background(0);
  
  if (buttonRead_1 == 1) {
    paddle.moveLeft();
  }
  if (buttonRead_3 == 1) {
    paddle.moveRight();
  }
  
  
  ball.display();
  ball.checkPaddle(paddle);
  paddle.display();
  for(int i = 0; i < block.length; i++){
    for(int j = 0; j < block[0].length; j++){
      block[i][j].display();
      block[i][j].checkBall(ball);
    }
  }
  
  // Launch ball if paddle is moved (either left or right button pressed) and ball is stationary
if (!ball.canMove && (buttonRead_1 == 1 || buttonRead_3 == 1)) {
  ball.launchIfStationary();
}

}

void serialEvent(Serial myPort) {
  String data = myPort.readStringUntil('\n');

  if (data != null) {
    data = trim(data);
    String[] tokens = split(data, ',');

    if (tokens.length == 2) {
      buttonRead_1 = int(tokens[0]); // left
      buttonRead_3 = int(tokens[1]); // right
    }
  }
}
