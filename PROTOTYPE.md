
# Technical Details:

PERIOD 4  <br/>
Eunice Wong, Han Xiao  <br/>
DUI  <br/>

Overcooked is a multi-player game(max two players) that incorporates similar play styles of the original nintendo game, Overcooked. In this game there are specific ingrdeints that need to be processed together to complete an order and earn points. Other in-game tasks include washing dishes, serving dishes, and trashing unneeded ingredients. There will be two teams: The players can choose to join the same team and compete against bots or join different teams (against each other) accompanied by bots. There will be a total of 5 rounds. Each round lasts 5 minutes, and points will accumulate.

### Critical Features (Minimum Viable Product)
:x: Player Movement using WASD and IJKL  
:x: Player Ability to Perform Tasks (pick up/drop/chop... etc.)  
:x: Point Accumulation throughout Rounds  
:x: Increasing Intensity (tasks) with Game Progression  
:x: Bots that replicate Player Features  
:x: Working Game Timer  
:x: Mid-game screens  
:x: End screen   
:x: Animation of Features Above in Processing  

### Extras
:x: Sliding Kitchen Counters/Settings  
:x: Different Cuisines/Settings  
     
# Project Design
(UML Diagram to be uploaded)

#### Classes  
| Class       | Subclasses | Instance Vars | Methods |
| :----------:| :---------: | :----------: | :----------: |
| Player      | N/A         | -name: String <br/> ~-location: Vector~ <br/> facing: int[] <br/> -possess: Object[] | +distanceFrom(Object): double <br/> +getName(): String <br/> +move(keyPressed): void <br/> +drop(Object): void <br/> +pickUp(Object): void <br/> +cook(Food) <br/> +chop(Food) <br/> +wash(Object)|
| Order  | N/A  | -name: String <br/> -ingredients: food[] <br/> -contents: food[] <br/> -tasks: type TBD| +getName(): String   |
| Object    | Food <br/> Plate | <br/> -location: Vector      | TBA     |  
| Food   | N/A   | -name: String <br/> -state: int <br/> -washTime: int <br/> -cookTime: int <br/> -chopTime: int <br/> -procedure: Queue| +getName(): String    |
| Appliances   | N/A   | -name: String <br/> -length: int <br/> -width: int| +getName(): String   |

##### Notes
- ~Primary cuisine/setting yet to be decided~ Japanese Cuisine  
- The states variable of food will contain an integer indicating (0: raw, 1: cooked, 2: burnt)  
- An order is considered complete when the foods (and their respective states) in the ingredients var match that of the contents var  
- If the order is sent out with incorrect foods and/or states, no points are given
- A player can only possess one object at a time 
- Actions performed on the object will be determined by location (one key determines all actions)  
  - Ex. if player is facing the trash, pressing the action key will result in the object being thrown away  
  - if a player is facing a chopping board with food on it, holding down the action key will begin chopping the food  
  - and so on... otherwise, the object can be dropped/picked up  
- xTime variable denotes specific times required for actions to transform the state of food (ex. chopTime, cookTime, bakeTime... etc.)  
- ~Possible modifications: an additional class may be added to represent components of dishes that need to be combined beforehand (ex. mixing together batter) and then processed (cooked)~
  
#### Algorithms
~How do bots perform actions? (maybe a queue of actions?)~  
Two bots will work together on the same order unless an emergency occurs (ex. food is burning). A set queue of tasks will be assigned to each recipe for the bots to follow.  
When a bot is teaming with a person, the bot will work on a separate order and mainly help with prep

#### How things fit together

    
# Intended pacing:

How you are breaking down the project and who is responsible for which parts.

| Date       | Tasks         | Notes        | 
| :----------: | :---------: | :----------: |
| May 22nd     | $\color{Aquamarine}{Object Class and Subclasses}$ <br/> $\color{red}{Player Class and Order Class}$ <br/> $\color{red}{Setting on Processing}$| 9999999999   |
| May 23rd     | 999999999  | 999999999    |
| May 26th     | 999999999  | 999999999    |
| May 28th     | 99999999   | 99999999     |
| May 30th     | 9999999    | 9999999      |
| June 1st     | 9999999    | 9999999      |
