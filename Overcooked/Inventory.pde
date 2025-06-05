class Inventory {
  ArrayList<Matter> inventory;
  
  Inventory(Matter obj, int max, float x, float y){
    //super("Inventory", x, y, false);
    for (int i = 0; i < max; i++){
      inventory.add(obj);
    }
  }

  void remove(){
    inventory.remove(0);
  }
  
  void display(){
    
  }
}
