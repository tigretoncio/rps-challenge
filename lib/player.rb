class Player

  attr_reader :name
  attr_accessor :choice

  CHOICES = {
             scissors: 0,
             paper: 1,
             rock: 2,
             lizard: 3,
             spock: 4
            }
  CLASSIC = 3
  SPOCK = 5

  def initialize(name)
    @name = name
  end

  def to_i
    CHOICES[choice.to_sym]
  end

  def computer_choice(game_mode)
    #run_it(game_mode)
    if game_mode == "spock"
      value = Kernel.rand(SPOCK)
    else
      value = Kernel.rand(CLASSIC)
    end
    @choice = CHOICES.key(value)
  end
end

# private
#   def run_it(game_mode)
#     ìf game_mode=='spock' then value = kernel.rand(spock) else value = kernel.rand(classic) end
#   end