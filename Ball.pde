class Ball{
    //Variables
    private float x, y, Vx, Vy, d;
    private boolean canMove;
    
    
    //Constructor
    public Ball(){
        x = width/2;
        y = height - 70;
        d = 20;
        Vx = random(-5,5);
        Vy = -10;
        canMove = true;
    }
    
    //Method (display)
    public void display(){
      fill(0,255,0);
      ellipse(x,y,d,d);
      if(canMove){
        x += Vx;
        y += Vy;
        //checkwalls
        if (x > width -5 || x < 5){
          Vx *= -1;
        }
        if (y < 5){
          Vy *= -1;
        }
        if (y > height){
          canMove = false;
          y = height - 70;
          Vy = -5;
        } 
      } else {
        x = mouseX;
      }
    }
    
    public void checkPaddle(Paddle pad){
      if(x > pad.x - pad.w/2 && x < pad.x + pad.w/2 && y > pad.y-d/2 && y < pad.y+d){
        Vy *=- 1;
      } 
    }
}
