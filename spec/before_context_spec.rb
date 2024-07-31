RSpec.describe "before context" do
  before(:context) do
    @count = rand(10)
    puts "before outer context @count = #{@count} <br>"
  end

  it "@count stays the same within test" do
    puts @count
    puts @count
    expect(@count).to_not eq("initial")
  end

  it "@count stays the same within context" do
    puts @count
    expect(@count).to_not eq("initial")
  end

  context "when before context hook is inherited" do
    it "@count stays the same within test" do
      puts @count
      puts @count
      expect(@count).to_not eq("initial")
    end

    it "@count stays the same within context" do
      puts @count
      expect(@count).to_not eq("initial")
    end
  end

  context "when before context hook is overwritten" do
    before(:context) do
      @count = rand(10) * 10
      puts "before onner context @count = #{@count} <br>"
    end

    it "@count stays the same within test" do
      puts @count
      puts @count
      expect(@count).to_not eq("initial")
    end

    it "@count stays the same within context" do
      puts @count
      expect(@count).to_not eq("initial")
    end
  end
end
