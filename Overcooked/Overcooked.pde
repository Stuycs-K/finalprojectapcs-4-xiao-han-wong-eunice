import java.util.ArrayList;

int round = 1;
int difficulty, secPassed, minLapse, maxLapse;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
MatterManage manager = new MatterManage();
ArrayList<Order> menu = new ArrayList<Order>();

//Objects
Stove stove;
Player A;
Counter[] counters = new Counter[9];

Counter counter1;
Counter counter2;
Counter counter3;
Counter counter0;
Chopping board0;
Chopping board1;


//one round lasts 60 seconds

//OBJECTS
//Stove stove = new Stove(360, 360);


/*
if (difficulty == 0){
  //change min and max lapse between orders
}
if (difficulty == 1){}
if (difficulty == 2){}
*/

void setEasy(){
  secPassed = 0;
  difficulty = 0;
  minLapse = 10;
  maxLapse = 16;
  
  menu.add(new SalmonSashimi());
  
}

void setMed(){
  secPassed = 0;
  difficulty = 1;
  minLapse = 9;
  maxLapse = 14;
}

void setHard(){
  secPassed = 0;
  difficulty = 2;
  minLapse = 6;
  maxLapse = 11;
  
  
}

void newRound(){
  orders = new ArrayList<Order>();
  difficulty++;
  round++;
  secPassed = 0;
}

void victoryScreen(){
  quad(400, 150, 1520, 100, 1480, 370, 450, 400);
  stroke(0,0, 0);
  quad(450, 400, 1480, 370, 1500, 700, 425, 700);
  quad(1500, 700, 425, 700, 450, 900, 1475, 900);
  
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
  //println("Added stove. List now size: " + manager.allMatter.size());
  A = new Player("Bob", 900.0, 420.0);
  manager.add(A);
  for(int x = 0; x < counters.length - 5; x++){
    counters[x] = new Counter(x * 120 + 360, 840);
    //manager.add(counters[x]);
  }
  //println("All Matter size: " + manager.allMatter.size());
  manager.debugPrintAllMatter();
  
  counter0 = new Counter(480, 120);
  counter1 = new Counter(360, 120);
  board0 = new Chopping(600, 120);
  board1 = new Chopping (720, 120);
  counter2 = new Counter(840, 120);
  counter3 = new Counter(960, 120);
  
  counters.add(counter0);
  
  
}

void draw(){
  
  for(int x = 120, bin = 0; x <= width - 240; x+=120){
    for(int y = 120; y <= height - 200; y+=120){
       fill(123, 82, 54);
      if((x == 120 && y == 120) || (x == width - 240 && y == 120)){
        y+= 240;
      }
      if((x == 240 && y == 120) || (x == width - 360 && y == 120)){
        y+=120;
      }
      if (!(x==240 && y == height - 240) && !(x==width - 360 && y == height - 240)){
        square(x, y, 120);
      }
      
      if((x==120 && y == height - 480) || (x== width - 240 && y == height - 480)){
        y +=240;
      }
    }
  }
  
    
  fill(0, 76, 153);
  
  A.display();
  counter0.display();
  counter1.display();
  board0.display();
  board1.display();
  counter2.display();
  counter3.display();
  
  
  rect(0.0, 0.0, 70, 40.0);
  fill(0, 76, 153);


  for(Counter c : counters){
    c.display();
  }
  
  stove.display();
  //victoryScreen();
}

 
