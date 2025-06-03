import java.util.ArrayList;

int round = 1;
int difficulty = 0;
int secPassed = 0;
int minLapse = 5;
int maxLapse = 8;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
//one round lasts 60 seconds

//OBJECTS
//Stove stove = new Stove(360, 360);

Counter counter0 = new Counter(240, 120);
Counter counter1 = new Counter(360, 120);
Chopping board0 = new Chopping(480, 120);
Chopping board1 = new Chopping (600, 120);
Counter counter2 = new Counter(720, 120);
Counter counter3 = new Counter(840, 120);

Player A = new Player("Bob", 900.0, 420.0);



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
    A.move("w");
  }
  if (key == 'a' || key == 'A'){
    A.move("a");
  }
  if (key == 'S' || key == 's'){
    A.move("s");
  }
  if (key == 'd' || key == 'D'){
    A.move("d");
  }
  
}
void setup(){
  size(1920, 1080);
  background(0, 76, 153);
  
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
}

 
