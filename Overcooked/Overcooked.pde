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
Counter[] counters = new Counter[6];
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

void newRound(){
  orders = new ArrayList<Order>();
  difficulty++;
  round++;
  secPassed = 0;
}

void victoryScreen(){
  quad(400, 150, 1520, 100, 1480, 370, 450, 400);
  stroke(
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
  println("Added stove. List now size: " + manager.allMatter.size());
  A = new Player("Bob", 900.0, 420.0);
  manager.add(A);
  for(int x = 1; x < counters.length + 1; x ++){
    counters[x - 1] = new Counter(x * 120, 840);
    manager.add(counters[x-1]);
  }
  println("All Matter size: " + manager.allMatter.size());
  manager.debugPrintAllMatter();
  counter0 = new Counter(240, 120);
  counter1 = new Counter(360, 120);
  board0 = new Chopping(480, 120);
  board1 = new Chopping (600, 120);
  counter2 = new Counter(720, 120);
  counter3 = new Counter(840, 120);

}

void draw(){
  
  for(int x = 120, bin = 0; x <= width - 240; x+=120){
    for(int y = 120; y <= height - 200; y+=120){
      if (bin == 1){
        fill(135,115,89);
        bin = 0;
      }
      else if (bin == 0){
        fill(227,212,175);
        bin = 1;
      }
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
  
  //for (int x = 
    
  //fill(214,191,161);
  fill(0, 76, 153);
  //circle(x, y)
  A.display();
  //stove.display();
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
  victoryScreen();
}

 
