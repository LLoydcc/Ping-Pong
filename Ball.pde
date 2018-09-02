class Ball{
  
    PVector position; 
    PVector velocity;
    float radius; 
  
    Ball(float x, float y, float r_){
      position = new PVector(x, y);      
      radius = r_; 
      velocity = new PVector(0, 1);
    }
  
    void display(){
      noStroke();
      fill(#FFFFFF);
      ellipse(position.x, position.y, radius * 2, radius * 2);
    }
    
    void move(){
      ball.position.x = ball.position.x + ball.velocity.x;
      ball.position.y = ball.position.y + ball.velocity.y;
    }
}
