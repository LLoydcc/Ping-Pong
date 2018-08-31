class Game{
 
  Ball ball;
  BlockArea area; 
  Rectangle rectangle;
  
  Game(Ball gameball, BlockArea blockarea, Rectangle gamerectangle){
    
    ball = gameball;
    area = blockarea;
    rectangle = gamerectangle;    
  }
  
  void start(){    
    background(0);
    fill(0); 
    
    ball.display();       
    area.display();
    rectangle.display();
  }
}
