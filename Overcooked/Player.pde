import java.util.Arrays;
class Player extends Matter{
  int[] dir;
  float[] facing;
  ArrayList<Matter> possess = new ArrayList<Matter>();
  String previousKey = "w";
  boolean obst = false;
  
  Player(String name, float x, float y){
    super("Player", x, y, true);
    facing = new float[]{x, y - 120};
    dir = new int[]{0, -1};
  }
  
  float faceX(){
    return facing[0];
  }
  
  float faceY(){
    return facing[1];
  }
  
  void move(String k, MatterManage manager){
    //if (getX()
    float dx = 0;
    float dy = 0;
      if (k.equals("w")){
        dy = -120;
        dir = new int[]{0, -1};
        if(previousKey.equals("d")){
           facing = new float[]{getX() - 120, getY() + dy};
        }
        else if(previousKey.equals("a")){
           facing = new float[]{getX()+240, getY() + dy -120};
        }
        else if(previousKey.equals("s")){
           facing = new float[]{getX(), getY() + dy -120};
        }
        else if (obst == false){
           facing = new float[]{getX(), getY() +dy};
        }
        println("now facing " + Arrays.toString(facing));
        previousKey = "w";
      }
      
      if (k.equals("a")){
        dx = -120;
        dir = new int[]{-1, 0};
        if(previousKey.equals("w")){
           facing = new float[]{getX() +  dx, getY() + 120};
        }
        else if(previousKey.equals("s")){
           facing = new float[]{getX()+dx, getY() - 120};
        }
        else if(previousKey.equals("d")){
           facing = new float[]{getX() + dx , getY()};
        }
        else if (obst == false){
           facing = new float[]{getX() + dx, getY()};
        }
        //facing = new float[]{getX() + dx - 60, getY() - 60};
        Arrays.toString(facing);
        println("now facing " + Arrays.toString(facing));
        previousKey = "a";
      }
      if (k.equals("s")){
        dy = 120;
        dir = new int[]{0, 1};
        if(previousKey.equals("w")){
           facing = new float[]{getX(), getY() + dy + 120};
        }
        else if(previousKey.equals("a")){
           facing = new float[]{getX() + 120, getY() + dy};
        }
        else if(previousKey.equals("d")){
           facing = new float[]{getX(), getY() + dy};
        }
        else if (obst == false){
           facing = new float[]{getX(), getY() + dy};
        }
        Arrays.toString(facing);
        println("now facing " + Arrays.toString(facing));
        previousKey = "s";
      }
      if (k.equals("d")){
        dx = 120;
        dir = new int[]{1, 0};
        if(previousKey.equals("w")){
           facing = new float[]{getX() + dx + 120, getY() + 120};
           println("now facing: "+faceX() +", "+faceY());
        }
        else if(previousKey.equals("a")){
           facing = new float[]{getX() + dx, getY()};
           println("now facing: "+faceX() +", "+faceY());
        }
        else if(previousKey.equals("s")){
           facing = new float[]{getX() + dx, getY() - 120};
           println("now facing: "+faceX() +", "+faceY());
        }
        else if (obst == false){
           facing = new float[]{getX() + dx, getY()};
           println("now facing: "+faceX() +", "+faceY());
        }
        println("now facing " + Arrays.toString(facing));
        previousKey = "d";
      }
      if (k.equals("r")){
        Matter thing;
        if(!handsFull()){
          println("hands not full");
          println("facing: "+faceX() +", "+faceY());
          println("at: "+getX()+", "+getY());
          thing = manager.getMovableMatter(this.faceX(), this.faceY());
          
          
          Matter thingAt = manager.getMovableMatter(this.getX(), this.getY());
          println("at: "+getX()+", "+getY());
          //println("facing: "+facing[0] +", "+facing[1]);
          if (thingAt != null){
            print("picking up thing");
            println(thingAt);
            println(thingAt + " at: "+thingAt.getX() +", "+ thingAt.getY());
              pickUp(thingAt);
              println("picked up item: "+thingAt);
          }
          else if (thing != null){
            println("trying to pick up");
            println(thing);
            println(thing + " at: "+thing.getX() +", "+ thing.getY());
            if (!thing.getMove() && thing.hasItem()){
              pickUp(thing.getItem());
              println("picked up contained item: "+thing.getItem());
              thing.rmItem();
            }
            
            else if (thing.getMove()){
              pickUp(thing);
              println("picked up item: "+thing);
            }
          
        }
        }
        else{
          Matter holding = possess.get(0);
          println("currently possess: "+holding);
          thing = manager.getMovableMatter(this.faceX(), this.faceY());
          println("currently facing: "+thing);
          println("currently facing: "+this.faceX() +", "+this.faceY());
          // || (thing.toString().equals("Stove")) || (thing.toString().equals("chopping board"))
          //println("this is a counter: "+thing.toString().equals("Counter"));
          if(thing != null){
            if (((thing.toString().equals("Counter") || thing.toString().equals("Stove")) || thing.toString().equals("chopping board")) && !thing.hasItem()){
              println("dropped and stored item: "+getItem());
              rmPossess();
              thing.addItem(holding);
            }
          
            else if (!thing.toString().equals("Inventory") && !thing.hasItem()){
              println("dropped item: "+getItem());
              //thing.addItem(holding);
              dropFacing();    
            }
            }
          }
        
        
        //if (handsFull()){
          
        //}
        
      }
    float newX = getX() + dx;
    float newY = getY() + dy;
    
    //println("Attempting move from (" + getX() + ", " + getY() + ") to (" + newX + ", " + newY + ")");
    
    Matter obstacle = manager.getMatterAt(newX, newY);
    if(obstacle == null){
      //println("No obstacle found, moving.");
       setX(dx);
       println("new x: " + getX());
       setY(dy);
       println("new y: " + getY());
       obst = false;
    }else {
    //println("Obstacle found: " + obstacle.getName() + ", move blocked.");
    obst = true;
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
    
    obj.modX(facing[0]);
    obj.modY(facing[1]);
  }
  
  void dropFacing() {
    if (!handsFull()) return;
    
    Matter heldItem = possess.get(0);
    heldItem.modX(facing[0]); 
    heldItem.modY(facing[1]); 
    
    if (!manager.allMatter.contains(heldItem)) {
        manager.add(heldItem);
    }
    
    possess.remove(0);
    println("Dropped at: " + facing[0] + ", " + facing[1]);
}
  
  void rmPossess(){
    possess.remove(0);
  }
  
  void pickUp(Matter obj){
    if (obj.getMove()){
      possess.add(obj);
      obj.modX(this.getX());
      obj.modY(this.getY());
    }
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
      
}
