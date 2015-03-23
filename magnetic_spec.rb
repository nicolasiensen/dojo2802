require 'rspec'
require './magnetic'

describe "magnetic" do
  field = { position: [50,50], radius: 5 }

  it "should return [50, 50]" do
    click = [53,50]
    expect(magnetic(field, click)).to eq [50, 50]
  end

  it "should return [0, 0]" do
    click = [0, 0]
    expect(magnetic(field, click)).to eq [0, 0]
  end

  it "should return [1, 1]" do
    click = [1, 1]
    expect(magnetic(field, click)).to eq [1, 1]
  end

  it "should return [2, 2]" do
    click = [2, 2]
    expect(magnetic(field, click)).to eq [2, 2]
  end

  it "should return [1, 2]" do
    click = [1, 2]
    expect(magnetic(field, click)).to eq [1, 2]
  end

  it "should return [56, 50]" do
    click = [56, 50]
    expect(magnetic(field, click)).to eq [56, 50]
  end

  it "should return [50, 70]" do
    click = [50, 70]
    expect(magnetic(field, click)).to eq [50, 70]
  end

  it "should return [50, 75]" do
    click = [50, 75]
    expect(magnetic field, click).to eq [50, 75]
  end

  it "should return [55, 54]" do
    click = [55, 54]
    expect(magnetic field, click).to eq [55, 54]
  end

  it "should return [40, 40]" do
    field = { position: [40, 40], radius: 5 }
    click = [40, 40]
    expect(magnetic(field, click)).to eq [40, 40]
  end

  it "should return [-40, -40]" do
    field = { position: [40, 40], radius: 5 }
    click = [-40, -40]
    expect(magnetic(field, click)).to eq [-40, -40]
  end


  it "should return [-9999, 9999]" do
    field = { position: [40, 40], radius: 5 }
    click = [-9999, 9999]
    expect(magnetic(field, click)).to eq [-9999, 9999]
  end
end
