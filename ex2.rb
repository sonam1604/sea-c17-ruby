class Orange
    def initialize(amount = 50)
      @fruit = amount
      puts @fruit
    end
    def fruit
      puts @fruit
    end
    def pick!(amount = 1)
    if @fruit > amount
      @fruit = @fruit - amount
    end
    end
    def Orange(other)
      Orange.fruit == other.fruit
      end
  end

  Orange.new == Orange.new(50)

