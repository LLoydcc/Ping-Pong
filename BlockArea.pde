class BlockArea{
  
  Block block; 
  int rows; 
  Block[] area; 
  
  BlockArea(Block customblock, int rowscount){
    
    block = customblock;
    rows = rowscount;    
    area = createArea();
  }
  
  void display(){
    for(Block block : area){
      block.display();
    }
  }
  
  Block[] createArea(){         
       
       float gap = 1;
       int blockcount = (int)Math.floor(width / (block.sidelength + gap));
       float overspace = (width / (block.sidelength + gap)) - blockcount;
       Block[] blocks = new Block[blockcount * rows];
       int count = 0;
       
       float positionY = block.position.y;
       
       for(int i = 0; i < rows; i++){
         
         Block[] currentblocks = new Block[blockcount];
         float positionX = block.position.x;                            
         for(int x = 0; x < currentblocks.length; x++){
                  
         currentblocks[x] = new Block(positionX, positionY, block.sidelength);
         
         if(x != currentblocks.length - 1){
           positionX = positionX + block.sidelength + (gap + overspace);
         }
         else{
           positionX = positionX + block.sidelength;
         }
       }
       for(int z = 0; z < currentblocks.length; z++){
         blocks[count] = currentblocks[z];
         count++;
       }
       positionY = positionY + block.sidelength + gap;       
       }        
      return blocks;            
  }
  
}
