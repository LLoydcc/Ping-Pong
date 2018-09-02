import java.awt.*;

class Game {

  Ball ball;
  BlockArea area; 
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
    score();
    ball.start();
  }

  void score() {
    textFont(font);
    fill(#FFFFFF);
    text(points, width / 2, height / 2);
  }
}
