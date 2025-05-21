public class Block{
    private float x,y,w,h;
    private int numBlocks;
    private boolean status;
    private int r,g,b;
    
    public Block(){
      x = 0;
      numBlocks = 8;
      y = 0;
      w = width / numBlocks;
      h = 20;
    }
    
    public Block(int row, int col, int theNumBlocks){
      numBlocks = theNumBlocks;
      w = width / numBlocks;
      h = 20;
      x = w * row;
      y = h * col;
      r = 255;
      g = 255;
      b = 0;
      status = true;
    }
    
    public void display(){
      fill(r,g,b);
      if(status){
        rect(x,y,w,h);
      }
    }
    
    public void checkBall(Ball ball){
      if(status){
        //Bottom
        if(ball.x > x && ball.x < x+w && ball.y < (y+h+ball.d/2)&& ball.y>y+h){
          ball.Vy*=-1;
          status=false;
        }
        //Top
        if(ball.x > x && ball.x < x+w && ball.y > y -ball.d/2 && ball.y < y){
          ball.Vy*=-1;
          status=false;
        }
        //Left
        if(ball.x > x - ball.d/2 && ball.y > y && ball.y < y+h && ball.x < x){
          ball.Vx*=-1;
          status=false;
        }
        //Right
        if(ball.x > x+w && ball.y > y && ball.y < y+h && ball.x<x+w+ball.d/2){
          ball.Vx*=-1;
          status=false;
        }
      }
   }
}
