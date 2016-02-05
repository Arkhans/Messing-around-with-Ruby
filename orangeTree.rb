class OrangeTree

  def initialize
    @height = 1
    @fruit = 0

    puts "You've just planted a new orange tree! Take care of it and watch it grow."
  end

  def height
    puts "Your tree is " + @height.to_s + " centimeters tall."
    oneYearPasses
  end

  def countFruit
    puts "There are " + @fruit.to_s + " oranges on the tree this year."
    oneYearPasses
  end

  def pickFruit
    if @fruit == 0
      puts "There are no fruit for you to pick. Better wait a year for it to grow."
    else
      @fruit -= 1
      puts "You pick an orange off the tree"
      taste = rand(2)
      if taste == 0
        puts "This particular orange didn't taste that good."
      elsif taste == 1
        puts "This orange tastes pretty good."
      elsif taste == 2
        puts "this orange is amazing! Better pick another one."       
      end
    end
    oneYearPasses
  end

  private

  def oneYearPasses

    if @height < 15      
        if @height > 12
          @fruit += 5
        elsif @height > 8
          @fruit += 4
        elsif @height > 6
          @fruit += 3
        elsif @height > 4
          @fruit += 2
        else @fruit = 0
        end  
      @height += 1
    else
      puts "Your tree has given you all that it could and has now gone back to the earth."
      exit
    end

  end
end

tree = OrangeTree.new
tree.height
tree.height
tree.height
tree.pickFruit
tree.height
tree.pickFruit
tree.height
tree.height
tree.height
tree.pickFruit
tree.height
tree.height
tree.height
tree.height
tree.countFruit
tree.height
tree.height
tree.height
tree.height
