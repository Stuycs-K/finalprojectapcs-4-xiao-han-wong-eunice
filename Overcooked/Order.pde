abstract class Order extends Matter implements Droppable{
  FoodItem[] ingredients;
  FoodItem[] prepared;
  int timePresent;
  
  Order(String name, FoodItem[] ingredients, float x, float y){
    super(name, x, y, true);
    this.ingredients = ingredients;
    this.prepared = new FoodItem[ingredients.length];
  }
  
  boolean addPreparedItem(FoodItem item){
    for(int i = 0; i < ingredients.length; i++){
      if(prepared[i] == null && ingredients[i].getName().equals(item.getName()) && item.state == ingredients[i].state){
        prepared[i] = item;
        return true;
      }
    }
    return false;
  }
  
  boolean isCompleted(FoodItem item){
    for(int i = 0; i < prepared.length; i++){
      if(prepared[i] == null){
        return false;
      }
    }
    return true;
  }
  
  abstract void animate();
  
}
