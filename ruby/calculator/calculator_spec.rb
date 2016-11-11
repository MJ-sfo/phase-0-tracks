# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(calculator.divide(9,3)).to eq 3
  end
  end

  # Release 2: Research on Your Own
  # 1 - Are there any handy RSpec cheat sheets out there? What observations can you make from skimming them?
# here is a link for module - https://www.dotnetperls.com/class-ruby
# looks similar to RSpec code
# good cheat sheet is: http://www.rubypigeon.com/posts/rspec-core-cheat-sheet/
# can compare to empty, array, besides a number like in our example
# 
# 2 - Where is the RSpec documentation?
# http://rspec.info/documentation/
#
# 3- What other RSpec matchers are available aside from eq?
# compare array, or if exists (nil)
# 
# 4- Can you find any free RSpec tutorials or in-depth resources that might be helpful to bookmark?
# http://blog.davidchelimsky.net/blog/2007/05/14/an-introduction-to-rspec-part-i/

