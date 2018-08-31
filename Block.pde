class Block{
  
  PVector position; 
  float sidelength; 
  
  Block(float x, float y, float side){
    position = new PVector(x, y);
    sidelength = side;
  }
  
  void display(){  
    noStroke();
    fill(#FF0000);    
    rect(position.x, position.y, sidelength, sidelength);
  }    
}
