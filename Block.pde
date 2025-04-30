public class Block{
    private float x,y,w,h, numBlocks;
    private boolean status;
    
    public Block(){
      x = 0;
      numBlocks = 8;
      y = 0;
      w = width / numBlocks;
      h = 20;
    }
    
    public void display(){
      rect(x,y,w,h);
    }
}
