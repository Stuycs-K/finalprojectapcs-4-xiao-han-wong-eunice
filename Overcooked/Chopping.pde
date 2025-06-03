class Chopping extends Matter{
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Chopping(float x, float y){
    super("chopping board", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
  void display(){}
  
  void animate(){
  }
}
