RSpec.describe "let" do
  let(:count) { rand(10) }

  it "count stays the same within test" do
    puts count
    puts count
    expect(count).to_not eq("initial")
  end

  it "count changes every test" do
    puts count
    expect(count).to_not eq("initial")
  end

  context "when let is inherited" do
    it "count stays the same within test" do
      puts count
      puts count
      expect(count).to_not eq("initial")
    end

    it "count changes every test" do
      puts count
      expect(count).to_not eq("initial")
    end
  end

  context "when let is overwritten" do
    let(:count) { rand(10) * 10 }

    it "count stays the same within test" do
      puts count
      puts count
      expect(count).to_not eq("initial")
    end

    it "count changes every test" do
      puts count
      expect(count).to_not eq("initial")
    end
  end
end
