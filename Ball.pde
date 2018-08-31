class Ball{
  
    PVector position; 
    PVector velocity;
    float radius; 
  
    Ball(float x, float y, float r_){
      position = new PVector(x, y);
      velocity = PVector.random2D();
      radius = r_;    
    }
  
    void display(){
      noStroke();
      fill(#FF0000);
      ellipse(position.x, position.y, radius * 2, radius * 2);
    }  
}
