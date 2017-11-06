# Orange tree

class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @fruit = 0
  end

  def height
    @height
  end

  def age
    @age
  end

  def one_year_passes
    @age += 1
    @height += 0.5
    puts "One year passes, the tree is now #{@age} year old, #{@height} feet tall"

    if @age == 2
      @fruit = 2
    elsif @age >= 2
      @fruit *= 3
    else
      @fruit = 0
    end

    puts "The tree produced #{@fruit} oranges"

    if @age == 8
      puts "The tree is now too old and has died."
      exit
    end
  end

  def orange_pick
    if @fruit > 0
      @number_of_oranges_picked = rand(1..@fruit)
      puts "You have picked #{@number_of_oranges_picked} oranges this year."
      puts "There are #{@fruit-@number_of_oranges_picked} orange(s) left on the tree this year"
    end
  end
end

tree = OrangeTree.new

puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
puts tree.one_year_passes
puts tree.orange_pick
