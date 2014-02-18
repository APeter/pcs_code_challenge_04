require "spec_helper"

require "parse.rb"


describe Parse do

  it "should parse full email addresses" do   
    return_array = Parse.parse_email("Madona@ecorp.com")
    expect(return_array).to eq(["Madona@ecorp.com"])
  end

  it "should parse full email addresses" do   
    return_array = Parse.parse_email("Michael@ecorp.net")
    expect(return_array).to eq(["Michael@ecorp.net"])
  end

  it "should parse full email addresses with numbers" do   
    return_array = Parse.parse_email("Adam@test123.edu")
    expect(return_array).to eq(["Adam@test123.edu"])
  end
  
  it "should return not found when partial email @domain.com" do   
    return_array = Parse.parse_email("@ecorp.com")
    expect(return_array).to eq(["Not Found"])
  end
  it "should return not found when partial email domain.com" do   
    return_array = Parse.parse_email("ecorp.com")
    expect(return_array).to eq(["Not Found"])
  end

  it "should return not found when partial email name" do   
    return_array = Parse.parse_email("Madona")
    expect(return_array).to eq(["Not Found"])
  end

  it "should return not found when partial email namedomain.com" do   
    return_array = Parse.parse_email("Madonaecorp.com")
    expect(return_array).to eq(["Not Found"])
  end


end



