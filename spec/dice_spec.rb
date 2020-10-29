require 'dice'

describe Dice do
    it 'allows the user to create an instance of dice' do
        expect(subject).to be_instance_of Dice
    end

    it 'allows the user to roll a dice' do
        dice = Dice.new
        expect(dice).to respond_to :roll
    end
    
    # If wanted to test whether a dice returns a random number could use a loop and array. 
    # Not necessary for this workshop
    # Instead it was sufficient to do a feature test in IRB. 

    it 'the roll method returns a number between 1 and 6' do
        expect(subject.roll).to be_between(1,6)
    end

    it 'user can specify how many times they would like to roll the dice' do
    # Tried this: allow_any_instance_of(Dice).to receive(:roll) 
    # This didn't work as it was basically the same as allows user to roll dice test
        expect(subject).to respond_to(:roll).with(1).argument
    end

    it 'shows the results of each dice roll' do
        expect(subject.roll(7)).to eq 7
    end

    #expect(subject.roll(15) to eq 15)

    #expect(subject.roll_history.length).to eq 15
end