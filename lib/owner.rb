class Owner
  # code goes here
  attr_accessor :owner, :name
  attr_reader :species

  @@all = []

  def initialize(owner, species = "human")
    @owner = owner
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes]<< Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats]<< Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<< Dog.new(name)
  end

  def walk_dogs
    @pets.each do |species, pet|
      if species == :dogs
        pet.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.each do |species, pet|
      if species == :cats
        pet.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.each do |species, pet|
      if species == :fishes
        pet.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    #delete the values of the dogs, fishes, cats keys
    #change all of their moods to "nervous"

    @pets.each do |species, pet|
      spsecies[pet] = []
    end
  end

end
