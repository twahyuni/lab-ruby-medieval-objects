class Person
  attr_reader :first_name, :last_name

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

  def alive?
    health > 0
  end

  def take_damage attack_strength
    @health -= attack_strength
    p "#{full_name} took #{attack_strength} of damages. HP=#{health}."
    p "#{full_name} died in battle!!" unless alive?
  end

  def attack enemy
    p "#{full_name} attacks #{enemy.full_name}!!"
    enemy.take_damage strength
  end
end

class Knight < Player
  def initialize first_name, last_name, health=50, strength=7
    super
  end

  def full_name
    "Sir #{super}"
  end
end

class Wizard < Player
  def initialize first_name, last_name, health=20, strength=75
    super
  end
end

lancelot = Knight.new 'Lancelot', 'du Lac', 300, 40
merlin = Wizard.new 'Merlin', 'Ambrosius', 200

random = Random.new
while lancelot.alive? && merlin.alive? do
  if random.rand > 0.5
    lancelot.attack merlin
  else
    merlin.attack lancelot
  end
  puts
end
