
# Technical Details:

PERIOD 4  <br/>
Eunice Wong, Han Xiao  <br/>
DUI  <br/>

Overcooked is a singular or multi-player game(max two players) that incorporates similar play styles of the original nintendo game, Overcooked. In this game there are specific ingrdeints that need to be processed together to complete an order and earn points. Other in-game tasks include washing dishes, serving dishes, and trashing unneeded ingredients. There will be ~two~ one team and the player(s) will try to complete as many orders as possible. ~: The players can choose to join the same team and compete against bots or join different teams (against each other) accompanied by bots.~ There will be a total of 5 rounds. Each round lasts 5 minutes, and points will accumulate.

### Critical Features (Minimum Viable Product)
:x: Single player movement using WASD
~:x: Player Movement using WASD and IJKL~  
:x: Player Ability to Perform Tasks (pick up/drop/chop... etc.)  
:x: Point Accumulation throughout Rounds  
:x: Increasing Intensity (tasks) with Game Progression  
~:x: Bots that replicate Player Features~  
:x: Working Game Timer  
:x: Mid-game screens  
:x: End screen   
:x: Animation of Features Above in Processing  

### Extras
:x: Second player movement and functionality using IJKL
:x: Sliding Kitchen Counters/Settings  
:x: Different Cuisines/Settings  

# Project Design
### Latest UML Diagram
![Alt text](OvercookedUML2.0.jpeg?raw=true "Title" )

### First UML Diagram
![Alt text](OvercookedUML.jpeg?raw=true "Title" )

### UML Chart
| Class       | Subclasses | Instance Vars | Methods |
| :----------:| :---------: | :----------: | :----------: |
| Player      | N/A         | -name: String <br/> ~-location: Vector~ <br/> facing: int[] <br/> -possess: Object[] | +distanceFrom(Object): double <br/> +getName(): String <br/> +move(keyPressed): void <br/> +drop(Object): void <br/> +pickUp(Object): void <br/> +cook(Food): int <br/> +chop(Food): void <br/> +wash(Object): void|
| Order       | N/A         | -name: String <br/> -ingredients: food[] <br/> -contents: food[] <br/> -procedure: Queue| +getName(): String <br/> +isComplete(): boolean |
| Plate      | N/A | -xComponent: int  <br/> -yComponent: int    |      |  
| Food   | N/A   | -name: String <br/> -state: int <br/> -washTime: int <br/> -cookTime: int <br/> -chopTime: int | +getName(): String <br/> +changeState(): void <br/> +getWash(): int <br/> +getCook(): int <br/> +getChop(): int|
| Appliances   | N/A   | -name: String <br/> -length: int <br/> -width: int| +getName(): String <br/> +animate(): void|


#### Method Descriptions
**getName(): String**   returns the name of the object<br/>
**+move(keyPressed): void** <br/>
**+moveTo(): void** finds and goes the fastest route to complete task(bot only)<br/>
**+drop(Object): void**   removes Object from Player's possession (instance variable list possess)<br/>
**+pickUp(Object): void** adds Object to Player's possession<br/>
**+cook(Food): int** modifies food state according to timer <br/>
**+chop(Food): void** modifies food state according to timer<br/>
**+wash(Object): void** modifies object state according to timer<br/>
**+isComplete(): boolean** returns if the action done is completed <br/>
**+changeState(): void** modifies the variable state<br/>
**+getWash(): int**   returns wash time<br/>
**+getCook(): int**   returns cook time<br/>
**+getChop(): int**    returns chop time<br/>
**+animate(): void**   <br/>

##### Notes
- ~Primary cuisine/setting yet to be decided~ Japanese Cuisine  
~- The states variable of food will contain an integer indicating (0: raw, 1: cooked, 2: burnt)~
- An order is considered complete when the foods (and their respective states) in the ingredients var match that of the contents var  
- If the order is sent out with incorrect foods and/or states, no points are given
- A player can only possess one object at a time
- Actions performed on the object will be determined by location (one key determines all actions)  
  - Ex. if player is facing the trash, pressing the action key will result in the object being thrown away  
  - if a player is facing a chopping board with food on it, holding down the action key will begin chopping the food  
  - and so on... otherwise, the object can be dropped/picked up  
~- xTime variable denotes specific times required for actions to transform the state of food (ex. chopTime, cookTime, bakeTime... etc.)~
~- Possible modifications: an additional class may be added to represent components of dishes that need to be combined beforehand (ex. mixing together batter) and then processed (cooked)~

### Algorithms
~How do bots perform actions? (maybe a queue of actions?)~  
~Two bots will work together on the same order unless an emergency occurs (ex. food is burning). A set queue of tasks will be assigned to each recipe for the bots to follow.~
~When a bot is teaming with a person, the bot will work on a separate order and mainly help with prep~

### How things fit together
#### Animation and Processing
- The screen will be divided into a x by x grid, each of the boxes will contain x pixels.
    - movement of a player ~or bot~ will only be animated once they have past a pixel(glitchy)
- Specific location of appilances will be blocked off
- After game has ended all functions will be disabled and end screen will show
#### Gameplay
- Completed orders will accumulate points, winner will be announced on the end screen
-
# Intended pacing:

How you are breaking down the project and who is responsible for which parts.

| Date       | Tasks         | Notes        |
| :----------: | :---------: | :----------: |
| May 22nd     | Han AND Eunice: complete plan and outline for game | N/A   |
| May 23rd     | Han: <br/> Eunice: | N/A    |
| May 26th     | Han: <br/> Eunice:     | N/A    |
| May 28th     | Complete Bot Algorithm for both types of gameplay  | N/A     |
| May 30th     | Han: <br/> Eunice:      | N/A      |
| June 1st     | Han: <br/> Eunice:      | N/A      |
