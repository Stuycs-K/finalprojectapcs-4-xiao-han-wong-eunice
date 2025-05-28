abstract class Droppable extends Matter{
  abstract boolean sink;
  abstract boolean belt;
  abstract boolean board;
  abstract boolean cooker;
  abstract boolean stove;
  
  boolean getSink(){
    return sink;
  }
  
  boolean getBelt(){
    return belt;
  }
  
  boolean getBoard(){
    return board;
  }
  
  boolean getCooker(){
    return cooker;
  }
  
  boolean getStove(){
    return stove;
  }
}
