class Ball{
  
    PVector position; 
    PVector velocity;
    float radius; 
  
    Ball(float x, float y, float r_){
      position = new PVector(x, y);
      velocity = PVector.random2D(new PVector(0, 800));
      radius = r_;  
    }
  
    void display(){
      noStroke();
      fill(#FFFFFF);
      ellipse(position.x, position.y, radius * 2, radius * 2);
    }
    
    void start(){
      System.out.println("x: " + velocity.x + " y: " + velocity.y);
      position = velocity;
    }
    
}
