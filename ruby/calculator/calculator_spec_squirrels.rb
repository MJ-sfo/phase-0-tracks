# Release 2: Research on Your Own
# http://rspec.info/documentation/ tells how to update rspec
# https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf
# is a great cheet sheet - mostley for things havent studied yet.
# but includes Equality and Iden�t, and True/False/nil
# github offers https://gist.github.com/dnagir/663876 , which suggests http://ApproachE.com
# q 3 - What other RSpec matchers are available aside from eq?
# besides Equality and Iden�t, and True/False/nil, there are greater than operator

require_relative 'calculator_squirrels'

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