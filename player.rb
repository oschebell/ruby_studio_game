

class Player

  attr_reader :name, :health

  attr_writer :name.capitalize

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def name=(new_name)
    @name = new_name.capitalize
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"  
  end
  
  def <=>(other)
    other.score <=> score
    
  end
  
  def strong?
    @health > 100
  
  end
  
  def score
    @name.length + @health
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end


end
