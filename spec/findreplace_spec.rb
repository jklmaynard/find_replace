require('rspec')
require('findreplace')

describe('String#findreplace') do

  it('will pick out a word from a string and replace it with another word') do
    expect(("Hello World").findreplace("World", "Epicodus")).to(eq("Hello Epicodus"))
  end

end
