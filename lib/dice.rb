class Dice
    def roll(argument = 1)
        results = []
        argument.times{results << rand(6) + 1}
        return results
    end

    def total(roll)
        roll.inject(:+)
    end
end