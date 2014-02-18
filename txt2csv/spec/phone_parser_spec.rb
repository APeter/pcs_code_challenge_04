require "spec_helper"

require "parse.rb"

describe Parse do

  

  it "should parse area code, prefixes and the line ddd-ddd-dddd" do
  
    return_array = Parse.parse_numbers("123-456-7890")
    expect(return_array).to eq(["","123","456","7890",""])
  end

   it "should parse area code, prefixes and the line (ddd)ddd-dddd" do
  
    return_array = Parse.parse_numbers("(123)-456-7890")
    expect(return_array).to eq(["","123","456","7890",""])
  end


  it "should parse country code, area code, prefixes and the line d-ddd-ddd-dddd" do
    
    return_array = Parse.parse_numbers("1-234-567-8900")
    expect(return_array).to eq(["1","234","567","8900",""])
  end

  it "should parse area code, prefixes and the line ddd.ddd.dddd" do
  
    return_array = Parse.parse_numbers("123.456.7890")
    expect(return_array).to eq(["","123","456","7890",""])
  end

  it "should parse area code, prefixes and the line ddd.ddd.dddd.xdddd" do
  
    return_array = Parse.parse_numbers("123.456.7890.x1234")
    expect(return_array).to eq(["","123","456","7890","x1234"])
  end

  it "should parse area code, prefixes, line and the extension ddd-ddd-dddd xdddd" do
    
    return_array = Parse.parse_numbers("123-456-7890 x1234")
    expect(return_array).to eq(["","123","456","7890","x1234"])
  end

  it "should parse area code, prefixes, line and the extension d-ddd-ddd-dddd xdddd" do
    
    return_array = Parse.parse_numbers("2-123-456-7890 x1234")
    expect(return_array).to eq(["2","123","456","7890","x1234"])
  end

  it "should parse area code, prefixes, line and the extension d-ddd-ddd-dddd xddd" do
    
    return_array = Parse.parse_numbers("2-123-456-7890 x123")
    expect(return_array).to eq(["2","123","456","7890","x123"])
  end

  it "should parse area code, prefixes, line and the extension ddd-ddd-dddd xddd" do
    
    return_array = Parse.parse_numbers("123-456-7890 x123")
    expect(return_array).to eq(["","123","456","7890","x123"])
  end

  it "should parse area code, prefixes and the line (ddd)ddd-dddd xdddd" do
  
    return_array = Parse.parse_numbers("(123)-456-7890 x1234")
    expect(return_array).to eq(["","123","456","7890","x1234"])
  end

  it "should parse area code, prefixes and the line d-ddd-ddd-dddd xddddd" do
  
    return_array = Parse.parse_numbers("1-123-456-7890 x12345")
    expect(return_array).to eq(["1","123","456","7890","x12345"])
  end

 it "should parse area code, prefixes, line and the extension ddd.ddd.dddd xddd" do
    
    return_array = Parse.parse_numbers("123.456.7890 x123")
    expect(return_array).to eq(["","123","456","7890","x123"])
  end

  it "should parse area code, prefixes, line and the extension ddd.ddd.dddd xdddd" do
    
    return_array = Parse.parse_numbers("123.456.7890 x1234")
    expect(return_array).to eq(["","123","456","7890","x1234"])
  end
  
  it "should parse country code, area code, prefixes, line and the extension (ddd)ddd-dddd xddddd" do
   
    return_array = Parse.parse_numbers("(234)567-8900 x12345")
    expect(return_array).to eq(["","234","567","8900","x12345"])
  end

  it "should parse country code, area code, prefixes, line and the extension ddd-ddd-dddd xddddd" do
   
    return_array = Parse.parse_numbers("234-567-8900 x12345")
    expect(return_array).to eq(["","234","567","8900","x12345"])
  end

    it "should parse country code, area code, prefixes, line and the extension (ddd)ddd-dddd xddd" do
   
    return_array = Parse.parse_numbers("(234)567-8900 x123")
    expect(return_array).to eq(["","234","567","8900","x123"])
  end

  it "should parse country code, area code, prefixes, line and the extension d-ddd-ddd-dddd xddddd" do
   
    return_array = Parse.parse_numbers("1-234-567-8900 x12345")
    expect(return_array).to eq(["1","234","567","8900","x12345"])
  end


end



