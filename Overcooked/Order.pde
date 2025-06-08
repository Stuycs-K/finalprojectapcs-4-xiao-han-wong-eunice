abstract class Order extends Matter{
  FoodItem[] ingredients;
  int points;
  int timePresent;
  
  Order(String name, FoodItem[] ingredients, float x, float y, int pts){
    super(name, x, y, true);
    this.ingredients = ingredients;
    points = pts;
  }
  
  boolean isComplete(ArrayList<FoodItem> prepared){
    ArrayList<FoodItem> preparedCopy = new ArrayList<>(prepared);
    for(int i = 0; i < ingredients.length; i++){  
      boolean matched = false;
      for(int j = 0; j < prepared.size(); j++){
        //if the prepared contains an object of the same class
        FoodItem item = prepared.get(j);
        if (ingredients[i].getClass() == item.getClass()){
          boolean sameState = ingredients[i].getState() == item.getState();
          boolean sameChopped = ingredients[i].isChopped() == item.isChopped();
          boolean sameWashed = ingredients[i].isWashed() == item.isWashed();
           if (sameState && sameChopped && sameWashed){
             preparedCopy.remove(j);
             matched = true;
             break;
           }
        }
      }
      if(!matched){
        return false;
      }
    }
    return true;
  }
  
  int getScoreValue(){
    if(this.getName().equals("Miso Soup")){
      return 25;
    }
    if(this.getName().equals("Salmon Roll") || this.getName().equals("Tuna Roll")){
      return 20;
    }else{
      return 10;
    }
  }
    
  
  /*
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
  */
  
  //abstract void animate();
  
  
  
}
