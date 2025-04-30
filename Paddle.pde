public class Paddle{
   //Variables (x, y, width, height (rectangle))
   private float x,y,w,h;
   
   public Paddle(){
     x = width/2;
     y = height - 50;
     w = 100;
     h = 20;
   }
   
   public void display(){
     fill(0,0,255);
     x = mouseX;
     rect(x-w/2,y,w,h);
   }
}
