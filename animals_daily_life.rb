class Animal
  STATES = ['sleep', 'wake up']

  attr_accessor :name

  @@count_of_sleep_animals = 0
  @@count_of_eat_animals = 0
  @@count_of__wake_up_animals = 0

  def initialize(name)
      @state = STATES[0]
      @name = name
      @@count_of_sleep_animals += 1
  end

  def sleep
    puts "previous state is #{@state} "
    if @state != STATES[0]
       @@count_of_sleep_animals += 1
       @@count_of__wake_up_animals -= 1
       @state = STATES[0]
    end
    puts "Now sleep #{@@count_of_sleep_animals} animals. " + "Name is #{@name}"
    puts "now state is #{@state} "
  end

  def to_wake_up
    puts "previous state is #{@state} "
    if @state != STATES[1]
       @@count_of__wake_up_animals += 1
       @@count_of_sleep_animals -= 1
       @state = STATES[1]
    end
    puts "Woke up #{@@count_of__wake_up_animals} animals. " + "Name is #{@name}"
    puts "now state is #{@state} "
  end

  def self.show_current_counts
    puts "Woke up animals count: #{@@count_of__wake_up_animals}\nSleep animals count: #{@@count_of_sleep_animals}"
  end
end

animal1 = Animal.new("Борька")
animal2 = Animal.new("Васька")
animal3 = Animal.new("Барсік")

Animal.show_curent_counts
animal1.to_wake_up
Animal.show_curent_counts
animal2.to_wake_up
Animal.show_curent_counts
animal3.to_wake_up
Animal.show_curent_counts
animal1.sleep
Animal.show_curent_counts
animal2.sleep
Animal.show_curent_counts
animal3.sleep
Animal.show_curent_counts
