![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Medieval Objects

## Medieval Objects
We are going to model a game that is set in Medieval Times. Along the way we are going to create:

#### Person
A `Person` class that is the "root" of the class hierarchy
  - Attributes
    - `first_name`
    - `last_name`
    - `full_name`

#### Player
A `Player` class that is a subclass of the Person class.
  - Attributes
    - `health`, defaults to 20
    - `strength`, defaults to 5
    - `alive`, default is true. A player will be dead if his/her health reaches zero
  - Methods
    - `take_damage(attack_strength)`: subtract the attack_strength from the recievers health.
    - `attack(player)`: call the player's take_damage method passing the attackers strength as an argument.

#### Knight
A `Knight` will be a subclass of the `Player` class.
  - It's default `health` will be 50
  - It's default `strength` will be 7

#### Wizard
A `Wizard` will be a subclass of the `Player` class.
  - It's default health will be 20
  - It's default strength will be 75

## Instructions
- Fork and clone this repo
- Create a game program (in `./game.rb`) that will model a battle/fight between players, knights and wizards. Don't need user input, unless you feel you want to.
- When you are done, submit a Pull Request to the project repo
