require "spec_helper"

require "parse.rb"


describe Parse do

  it "should parse twitter names with @" do   
    return_array = Parse.parse_twitter("@Madona")
    expect(return_array).to eq(["Madona"])
  end

  it "should parse twitter names without @" do   
    return_array = Parse.parse_twitter("Madona")
    expect(return_array).to eq(["Madona"])
  end


end



