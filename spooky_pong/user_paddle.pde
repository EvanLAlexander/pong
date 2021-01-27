public class uPaddle{
  public int x;
  public int y;
  private int sy;

  public uPaddle(int sy){
  this.x = width - 75;
  this.sy = sy;
  this.y = 0;
  }
  
  public void move() {
    this.y += this.sy;
    if (this.y + 520 > height) {
      this.sy = this.sy * -1; 
    }
    if (this.y  < 0 ) {
      this.sy = this.sy * -1;
    } 
    
    if (key == 'w'){
      if(this.sy > -1){
        this.sy = this.sy * -1;
      }
          if (this.y  < 0 ) {
      this.sy = this.sy * -1;
    }
    }
    if (key == 's'){
      if(this.sy < -1){
        this.sy = this.sy * -1;
    }
        if (this.y + 540 > height) {
      this.sy = this.sy * -1; 
    }
}
}
public void draw() {
    rect(this.x, this.y, 75, 400);
  }
}
