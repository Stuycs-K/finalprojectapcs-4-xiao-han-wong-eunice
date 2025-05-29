class Player extends Matter{
  int[] facing;
  ArrayList<Matter> possess;
  
  Player(String name, float x, float y){
    super(name, x, y, true);
    facing = new int[]{0, -1};
  }
  
  void move(String k){
  }
  
  void drop(Matter obj){
    possess.remove(obj);
  }
  
  void pickUp(Matter obj){
    possess.add(obj);
  }
}
