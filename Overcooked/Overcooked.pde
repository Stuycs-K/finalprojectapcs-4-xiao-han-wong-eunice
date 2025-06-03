import java.util.ArrayList;

int round = 1;
int difficulty = 0;
int secPassed = 0;
int minLapse = 5;
int maxLapse = 8;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
MatterManage manager = new MatterManage();

//Objects
Stove stove;
Player A;
//one round lasts 60 seconds

/*
if (difficulty == 0){
  //change min and max lapse between orders
}
if (difficulty == 1){}
if (difficulty == 2){}
*/

void newRound(){
  orders = new ArrayList<Order>();
  difficulty++;
  round++;
  secPassed = 0;
}


void keyPressed() {
  if (key == 'w' || key == 'W'){
    A.move("w",manager);
  }
  if (key == 'a' || key == 'A'){
    A.move("a",manager);
  }
  if (key == 'S' || key == 's'){
    A.move("s",manager);
  }
  if (key == 'd' || key == 'D'){
    A.move("d",manager);
  }
  
}
void setup(){
  size(1920, 1080);
  background(0, 76, 153);
  //OBJECTS
  stove = new Stove(240, 240);
  manager.add(stove);
  println("Added stove. List now size: " + manager.allMatter.size());
  A = new Player("Bob", 900.0, 420.0);
  manager.add(A);
  println("All Matter size: " + manager.allMatter.size());
  manager.debugPrintAllMatter();

}

void draw(){
  /*
  for (int x = 60; x <= 1920; x+=60){
    line (x, 0, x, 1080);
    //square();
  }
  for (int y = 60; y <= 1080; y+=60){
    line(0, y, 1920, y);
  }
  */
  rect(0.0, 0.0, 70, 40.0);
  
  for(int x = 120, bin = 0; x <= width - 240; x+=120){
    for(int y = 120; y <= height - 240; y+=120){
      if (bin == 1){
        fill(135,115,89);
        bin = 0;
      }
      else if (bin == 0){
        fill(227,212,175);
        bin = 1;
      }
      square(x, y, 120);
    }
  }
  
  //for (int x = 
    
  //fill(214,191,161);
  fill(0, 76, 153);
  //circle(x, y)
  A.display();
  stove.display();
}

 
