abstract class Order{
  FoodItem[] ingredients;
  FoodItem[] prepared;
  
  Order(FoodItem[] ingredients){
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
