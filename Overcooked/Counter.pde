class Counter extends Matter{

  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Counter(float x, float y){
    super("Counter", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
  
  void display(){
  for(int x = 0; x <= width; x+=120){
    for(int y = 120 * 9; y <= height; y+=120){
      square(x, y , 120);
    }
    }
  }
}
