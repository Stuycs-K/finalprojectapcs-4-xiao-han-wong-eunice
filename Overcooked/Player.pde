import java.util.Arrays;
class Player extends Matter{
  int[] dir;
  float[] facing;
  int startTime = -1;
  ArrayList<Matter> possess = new ArrayList<Matter>();
  
  Player(String name, float x, float y){
    super(name, x, y, true);
    facing = new float[]{0, -1};
    dir = new int[]{0, -1};
  }
  
  float faceX(){
    return facing[0];
  }
  
  float faceY(){
    return facing[1];
  }
  
  boolean withinRange(float min, float max, float target){
    if (target >= min - 100 && target <= max + 100){
      return true;
    }
    return false;
  }
  
  
  void move(String k, ArrayList<Matter> appliances){
    if (possess.size() > 0){
      if (k.equals("c") || k.equals("C")){
          for (Matter app: appliances){
            if (withinRange(this.faceX(), this.faceX(), app.getX()) && withinRange(this.faceY(), this.faceY(), app.getY())){
                drop();
            }
          }
       }
       
       if (k.equals("b") || k.equals("B")){
            //if (withinRange(this.faceX(), this.faceX(), appliances.get(0).getX()) && withinRange(this.faceY(), this.faceY(), appliances.get(0).getY())){
              print("at " + appliances.get(0));
              appliances.get(0).addItem(possess.get(0));
              drop();
            //}
       }
    }
  }
        
  void move(String k, MatterManage manager){
    //if (getX()
    float dx = 0;
    float dy = 0;
      if (k.equals("w") || k.equals("W")){
        dy = -120;
        dir = new int[]{0, -1};
        facing = new float[]{getX(), getY() + dy};
        println("now facing " + Arrays.toString(facing));
      }
      if (k.equals("a") || k.equals("A")){
        dx = -120;
        dir = new int[]{-1, 0};
        facing = new float[]{getX() + dx, getY()};
        Arrays.toString(facing);
        println("now facing " + Arrays.toString(facing));
      }
      if (k.equals("s") || k.equals("S")){
        dy = 120;
        dir = new int[]{0, 1};
        facing = new float[]{getX(), getY() + dy};
        Arrays.toString(facing);
        println("now facing " + Arrays.toString(facing));
      }
      if (k.equals("d") || k.equals("D")){
        dx = 120;
        dir = new int[]{1, 0};
        facing = new float[]{getX() + dx, getY()};
        println("now facing " + Arrays.toString(facing));
      }
      
      
      
      
    float newX = getX() + dx;
    float newY = getY() + dy;
    
    //println("Attempting move from (" + getX() + ", " + getY() + ") to (" + newX + ", " + newY + ")");
    
    Matter obstacle = manager.getMatterAt(newX, newY);
    if(obstacle == null){
      //println("No obstacle found, moving.");
       setX(dx);
       setY(dy);
    }else {
    //println("Obstacle found: " + obstacle.getName() + ", move blocked.");
    }
  }
  
  void facingRay(){
    fill(255, 255, 255);
    tint(255, 127);
    if (dir[0] == 0 && dir[1] == -1){
      quad(this.getX() + 10, this.getY() - 20, this.getX() - 10, this.getY() - 20, this.getX() - 50, this.getY() -80, this.getX() + 50, this.getY() - 80);
    }
    if (dir[0] == -1 && dir[1] == 0){
      quad(this.getX() - 10, this.getY() - 10, this.getX() - 10, this.getY() + 10, this.getX() - 80, this.getY() +50, this.getX() - 80, this.getY() - 50);
    }
    if (dir[0] == 1 && dir[1] == 0){
      quad(this.getX() + 10, this.getY() - 10, this.getX() + 10, this.getY() + 10, this.getX() + 80, this.getY() +50, this.getX() + 80, this.getY() - 50);
    }
    if (dir[0] == 0 && dir[1] == 1){
      quad(this.getX() + 10, this.getY() + 20, this.getX() - 10, this.getY() + 20, this.getX() - 50, this.getY() +80, this.getX() + 50, this.getY() + 80);
    }
    
  }
  
  
  void drop(Matter obj){
    possess.remove(obj);
  }
  
  void drop(){
    possess.remove(0);
  }
  
  void pickUp(Matter obj){
    possess.add(obj);
    obj.modX(this.getX());
    obj.modY(this.getY());
    obj.display();
  }
  
  int wait = 5000;

  void cook(FoodItem obj){
    obj.changeState("cooked");
    /*if (obj.getCook() > 0){
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
    }*/
  }

  void washFood(FoodItem obj){
    obj.setWash();
    /*
    if (obj.getWash() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    }
    
    int elapsed = millis() - startTime;
    if(elapsed >= 50000){
      obj.setWash();
    }*/
  }
  
  void washPlate(Plate obj){
    obj.changeState();
    /*
    if(obj.getWash() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    } 
    
    int elapsed = millis() - startTime;
    if(elapsed >= 50000){
      obj.changeState();
    }*/
  }
  
  void chop(FoodItem obj){
    obj.setChop();
    /*
    if(obj.getChop() > 0){
      if(startTime == -1){
        startTime = millis();
      }
    }
    if(startTime != -1){
      int elapsed = millis() - startTime;
      if(elapsed >= 50000){
        obj.setChop();
        startTime = -1;
      }
    }*/
  }
  
  
  
  void display(){
    stroke(0, 0, 0);
    circle(getX(), getY(), 100);
    //circle(getX(), getY(), 100);
    fill(188, 43, 43);
    
    if (possess.size() > 0){
      possess.get(0).display();
    }
  }
  
  Matter copy(float X, float Y){
    return new Player("player2",X, Y);
  }

  boolean handsFull(){
    if (possess.size() > 0){
      return true;
    }
    return false;
  }
  
  Matter getItem(){
    if (possess.size() > 0){
      return possess.get(0);
    }
    return null;
  }
  
  ArrayList<Matter> getPossess(){
    return this.possess;
  }
      
}
