public class Paddle {
  public int x;
  public int y;
  private int sy;
  private int random = (int)(Math.random() * 400 + 1);

  public Paddle(int sy){
   this.x = 0;
   this.sy = sy;
   this.y = 0;
  }
  public void move() {
    this.y += this.sy;
    if (this.y + 540 > height) {
      this.sy = this.sy * -1; 
    } 
    if (this.y  < 0 ) {
      this.sy = this.sy * -1;
    } 
  }
  
  
  
  
  public void draw() {
    rect(this.x, this.y, 75, 400);
  }
}
