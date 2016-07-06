
# SETTINGS
# Knight, Wizard < Player < Person
class Person

  attr_accessor :first_name, :last_name

  def initialize first_name, last_name
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end

class Player < Person

  attr_reader :health, :strength

  def initialize first_name, last_name, health=20, strength=5
    super first_name, last_name
    @health = health
    @strength = strength
  end

  def take_damage attack_strength
    @health -= attack_strength
    @health = 0 unless @health > 0
    p "#{full_name} took #{attack_strength} damages. HP= #{health}"
  end

  def attack opponent
    p "#{full_name} attacks #{opponent.full_name}"
    atk = rand(0..strength)
    opponent.take_damage atk
  end

  def alive?
    health > 0
  end

end

class Knight < Player

  def initialize first_name, last_name, health= 50, strength=7
    super
  end

end

class Wizard < Player

  def initialize first_name, last_name, health= 20, strength=75
    super
  end

end

# CREATE
dog = Knight.new 'Doggo', 'Knight', 500, 100
cat = Wizard.new 'Chesire', 'Wizard', 250, 200

# PLOT
# keep fighting till death... why
while dog.alive? && cat.alive? do
  turn = rand(0..1)
  turn == 1? dog.attack(cat) : cat.attack(dog)
  puts
end