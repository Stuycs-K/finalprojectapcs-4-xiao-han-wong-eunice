class Player extends Matter{
  int[] facing;
  ArrayList<Matter> possess;
  
  Player(String name, float x, float y){
    super(name, x, y, true);
    facing = new int[]{0, -1};
  }
  
  void move(String k){
    //if (getX()
      if (k.equals("w")){
        setY(-120);
      }
      if (k.equals("a")){
        setX(-120);
      }
      if (k.equals("s")){
        setY(120);
      }
      if (k.equals("d")){
        setX(120);
      }
  }
  
  void drop(Matter obj){
    possess.remove(obj);
  }
  
  void pickUp(Matter obj){
    possess.add(obj);
  }
  
  int startTime;
  int wait = 5000;

  void cook(FoodItem obj){
    startTime = -1;
    if (obj.getCook() > 0){
      if (startTime == -1){
        startTime = millis();
      }
      int elapsed = millis() - startTime;
    
      if(elapsed >= 5000 && elapsed <= 10000){
        obj.changeState("cooked");
        startTime = -1;
      }
      else if (elapsed > 10000){
        obj.changeState("burnt");
        startTime = -1;
      }
    }
  }

  void washFood(FoodItem obj){
    startTime = -1;
    if (obj.getWash() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    }
    
    int elapsed = millis() - startTime;
    if(elapsed >= 50000){
      obj.setWash();
    }
  }
  
  void washPlate(Plate obj){
    startTime = -1;
    if(obj.getWash() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    }
    
    int elapsed = millis() - startTime;
    if(elapsed >= 50000){
      obj.changeState();
    }
  }
  
  void chop(FoodItem obj){
    startTime = -1;
    if(obj.getChop() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    }
    
    int elapsed = millis() - startTime;
    if(elapsed >= 50000){
      obj.setChop();
    }
  }
  
  void display(){
    stroke(0, 0, 0);
    circle(getX(), getY(), 100);
    circle(getX(), getY(), 100);
    fill(188, 43, 43);
  }

  
      
}
