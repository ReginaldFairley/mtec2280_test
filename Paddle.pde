public class Paddle {
  // Variables (x, y, width, height)
  float x, y, w, h;
  float speed = 5;

  public Paddle() {
    x = width / 2;
    y = height - 50;
    w = 100;
    h = 20;
  }

  public void display() {
    fill(0, 0, 255);
    rect(x, y, w, h);
  }

  public void moveLeft() {
    x -= speed;
    x = max(w / 2, x);
  }

  public void moveRight() {
    x += speed;
    x = min(width - w / 2, x);
  }
}
