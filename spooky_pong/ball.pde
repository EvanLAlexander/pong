public class Ball {
  
  private int x;
  private int y;
  private int aiPoint;
  private int userPoint;
  private int speedx;
  private int speedy;
  private PImage pump;
  private int random = (int) Math.floor(Math.random() * 30 + 1);

  //function discribing the ball + variables
  public Ball(int sx, int sy){
    this.x = 76;
    this.y = random;
    this.speedx = sx;
    this.speedy = sy;
    this.pump = loadImage("pumpy.png");
  }
  public void move() {
    this.x += this.speedx;
    this.y += this.speedy;
    if (this.y + 220 > height) {
      this.speedy = this.speedy * -1;
      
    } 
    if(this.x < 0){
      userPoint += 1;
      this.y = 1;
      this.x = 1;
      this.speedx = int(random(10,30));
      this.speedy = int(random(10,30));
    }
    if(this.x + 75 > width){
      aiPoint += 1;
      this.x = 1; 
      this.y = 1;
    }

    

    
    if (this.y  < 0 ) {
      this.speedy = this.speedy * -1;
    } 
    if(this.x + 100 >= user.x && this.y +75 >= user.y && this.y <= user.y + 400){
      this.speedy =  int(random(10,30)) * -1;
      this.speedx =  int(random(10,30)) * -1;
      
    }
    if(this.x >= ai.x && this.x <= ai.x + 75 && this.y +75 >= ai.y && this.y <= ai.y + 400){
      this.speedy = int(random(10,30))  ;
      this.speedx = int(random(10,30)) ;
    }
    
  }
  public void draw(){
  image(this.pump , this.x, this.y);
   
  }
}
