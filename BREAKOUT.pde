Ball ball;
Paddle paddle;
Block block;

void setup(){
  size(600, 800);
  ball = new Ball();
  paddle = new Paddle();
  block = new Block();
}

void draw(){
  background(0);
  ball.display();
  ball.checkPaddle(paddle);
  paddle.display();
  block.display();
}

void mousePressed(){
  ball.y -= 5;
  ball.Vy = -5;
  ball.canMove = true;
}
