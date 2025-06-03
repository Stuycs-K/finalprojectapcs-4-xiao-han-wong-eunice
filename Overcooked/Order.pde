abstract class Order extends Matter implements Droppable{
  FoodItem[] ingredients;
  int timePresent;
  
  Order(String name, FoodItem[] ingredients, float x, float y){
    super(name, x, y, true);
    this.ingredients = ingredients;
  }
  
  boolean isComplete(ArrayList<FoodItem> prepared){
    for(int i = 0; i < ingredients.length; i++){
      for(int j = 0; j < prepared.size(); j++){
        //if the prepared contains an object of the same class
        FoodItem item = prepared.get(j);
        if (ingredients[i].getClass() == item.getClass()){
          boolean sameState = ingredients[i].getState() == item.getState();
          boolean sameChopped = ingredients[i].isChopped() == item.isChopped();
          boolean sameWashed = ingredients[i].isWashed() == item.isWashed();
           if (sameState && sameChopped && sameWashed){
             prepared.remove(j);
             j--;
           }
        }
      }
    }
    
    if (prepared.size() == 0){
      return true;
    }
    return false;
  }
  
  boolean sink(){
   return false; 
  }
  boolean belt(){
    return false;
  }
  boolean board(){
    return false;
  }
  boolean stove(){
    return false;
  }
  
  
  abstract void animate();
  
  
  
}
