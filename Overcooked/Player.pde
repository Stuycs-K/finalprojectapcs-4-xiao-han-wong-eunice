class Player{
  int[] facing;
  ArrayList<Matter> possess;
  
  void move(keyPressed k){
  }
  
  void drop(Matter obj){
    possess.remove(obj);
  }
  
  void pickUp(Matter obj){
    possess.add(obj);
  }
}
