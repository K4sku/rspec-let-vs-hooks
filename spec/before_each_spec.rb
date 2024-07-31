RSpec.describe "before each" do
  before(:each) do
    @count = rand(10)
    puts "before each outer context @count = #{@count} <br>"
  end

  it "@count stays the same within test" do
    puts @count
    puts @count
    expect(@count).to_not eq("initial")
  end

  it "@count changes every test" do
    puts @count
    expect(@count).to_not eq("initial")
  end

  context "when before each hook is inherited" do
    it "@count stays the same within test" do
      puts @count
      puts @count
      expect(@count).to_not eq("initial")
    end

    it "@count changes every test" do
      puts @count
      expect(@count).to_not eq("initial")
    end
  end

  context "when before each hook is overwritten" do
    before(:each) do
      @count = rand(10) * 10
      puts "before each inner context @count = #{@count} <br>"
    end


    it "@count stays the same within test" do
      puts @count
      puts @count
      expect(@count).to_not eq("initial")
    end

    it "@count changes every test" do
      puts @count
      expect(@count).to_not eq("initial")
    end
  end
end
