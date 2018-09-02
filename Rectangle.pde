class Rectangle{
  
  PVector position;
  float longitude; 
  float thickness;
  
  Rectangle(float x, float y, float rect_length, float rect_thickness){
    position = new PVector(x, y);
    longitude = rect_length;
    thickness = rect_thickness;
  }
  
  void display(){
    noStroke();
    fill(#FF0000);
    rect(position.x, position.y, longitude, thickness);
  }
  
  void moveLeft(float speed){
    if(position.x > 0){
      position.x = position.x - speed;
    }     
  }  
  
  void moveRight(float speed){   
    if(position.x + longitude < width){
      position.x = position.x + speed;
    }   
  }
}
