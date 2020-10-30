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

    #it 'the roll method returns a number between 1 and 6' do
    #    expect(subject.roll).to be_between(1,6)
    #end
    #This test has been superceded by another test

    it 'user can specify how many times they would like to roll the dice' do
    # Tried this: allow_any_instance_of(Dice).to receive(:roll) 
    # This didn't work as it was basically the same as allows user to roll dice test
        expect(subject).to respond_to(:roll).with(1).argument
    end
    
    it 'shows the results of each dice roll' do
        expect(subject.roll(50)).to all(be_between(1,6))        
    end

    # User Story 6 - I want to be able to get my current score
    # This is defined on the Dice class so to find out what the score would be --> dice.total(roll)
    it 'responds to the method total' do
        expect(subject).to respond_to(:total)
    end
    it "gives a total of all the rolled dice" do
        expect(subject.total([1, 2, 3])).to eq(6)
    end

end

    
