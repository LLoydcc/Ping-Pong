import java.awt.*;
import java.util.*;

class Game {

  Ball ball;
  BlockArea area; 
  
  Range rectangle_range;
  
  Rectangle rectangle;
  int points = 0;
  PFont font;

  Game(Ball gameball, BlockArea blockarea, Rectangle gamerectangle) {

    ball = gameball;
    area = blockarea;
    rectangle = gamerectangle;         
    font = createFont("SansSerif Bold", 25, true);
  }

  void start() {    
    background(0);
    fill(0); 
  

    ball.display();       
    area.display();
    rectangle.display();
    //score();    
    play();
  }

  void score() {
    textFont(font);
    fill(#FFFFFF);
    text(points, width / 2, height / 2);
  }
  
  void play(){
            
    ball.move(); 
    
    rectangle_range = new Range(rectangle.position.x, rectangle.position.x + rectangle.longitude);
          
    if(ball.position.y == rectangle.position.y - (rectangle.thickness / 2) && 
    rectangle_range.inbetween(ball.position.x)){
       ball.velocity.y *= -1;     
    }
   
    ArrayList<Float> lines = new ArrayList<Float>(); 
    
    for(Block block : area.area){
      if(!lines.contains(block.position.y + 20)){
        lines.add(block.position.y + block.sidelength);
      }
    }
    
    if(lines.contains(ball.position.y - ball.radius)){
      ball.velocity.y *= -1;
    }
  }
}
