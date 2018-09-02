Ball ball = new Ball(400, 375, 5);
Rectangle rectangle = new Rectangle(375, 385, 50, 10);
Block block = new Block(0, 0, 20);
BlockArea area;
Game game;
float speed = 10;

void setup() {
  size(800, 400);  
  
  area = new BlockArea(block, 5);    
  game = new Game(ball, area, rectangle);
  
}

void draw() {  
  game.start();  
}

void keyPressed(){
  if(key == 'A' || key == 'a'){   
     rectangle.moveLeft(speed);        
  }   
  else if(key == 'D' || key == 'd'){    
    rectangle.moveRight(speed);      
    }     
}
