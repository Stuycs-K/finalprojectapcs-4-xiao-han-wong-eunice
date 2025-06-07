class Inventory extends Matter{
  ArrayList<Matter> inventory = new ArrayList<Matter>();
  
  Inventory(Matter obj, int max, float x, float y){
    super("Inventory", x, y, false);
    for (int i = 0; i < max; i++){
      inventory.add(obj.copy(x, y));
    }
  }

  void remove(){
    inventory.remove(0);
  }
  
  void display(){
    fill(233, 166, 88);
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    fill(255, 255, 255);
    if (inventory.size() > 0){
      inventory.get(0).display();
    }
  }
  
  Matter copy(float X, float Y){
    return new MisoSoup(X, Y);
  }
}
