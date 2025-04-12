# RPG - Fight K.O!

class Warrior
  attr_reader :life, :name

  def initialize(name, height, age, life = 100)
    @name = name
    @height = height
    @age = age
    @life = life
  end

  def walk
    puts "#{@name} is walking!"
  end

  def talk
    puts "#{@name} said hi!"
  end

  def battle
    @life -= rand(0..30)
  end
end

# naming the warriors
warrior1 = Warrior.new("Thor", 1.98, 1500)
warrior2 = Warrior.new("Dracula", 1.93, 591)

loop do
  # randomly decide who attacks first (50% chance for each)
  if rand(2) == 0
    warrior1.battle
    warrior2.battle
  else
    warrior2.battle
    warrior1.battle
  end

  # check for winner
  if warrior1.life <= 0
    puts "#{warrior1.name} has #{warrior1.life} points of life"
    puts "#{warrior2.name} has #{warrior2.life} points of life"
    puts "#{warrior2.name} won!"
    break
  elsif warrior2.life <= 0
    puts "#{warrior1.name} has #{warrior1.life} points of life"
    puts "#{warrior2.name} has #{warrior2.life} points of life"
    puts "#{warrior1.name} won!"
    break
  end
end