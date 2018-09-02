class Range{
  
  float min;
  float max;
  
  Range(float minimum, float maximum){
    min = minimum;
    max = maximum;
  }
  
  boolean inbetween(float value){
    if(min <= value && max >= value){
      return true;
    }
    return false;    
  }
}
