
class Parse

  def self.parse_names (prefixes, suffixes, name_string)

    parsed_name = {pre:"", first:"", middle:"", last:"", suffix:""}

    # get the last word and see if it's a suffix
    # if so, save as suffix and store the next to last word as last_name
    # otherwise store last word as last name

    word = name_string.split
    parsed_name[:suffix] = word.pop if suffixes.include? word.last
    parsed_name[:pre] = word.shift if prefixes.include? word.first
    parsed_name[:last] = word.pop 
    parsed_name[:first] = word.shift unless word == []
    parsed_name[:middle] = word.pop unless word == []
    parsed_name.values
  end

  def self.parse_numbers (phone_string)

    parsed_number = {country_code:"", area_code:"", prefix:"", line:"", extension:""}

    number = phone_string.split(/\W/)
    number.reject!{ |i| i.empty? }
    
    case number.size

    when 5
        parsed_number[:country_code] = number.shift
    when 4 
       if number.last.include?("x") 
            parsed_number[:country_code] = "" 
        else 
            parsed_number[:country_code] = number.shift 
        end
    else
        nil
    end

    parsed_number[:area_code] = number.shift
    parsed_number[:prefix] = number.shift
    parsed_number[:line] = number.shift
    parsed_number[:extension] = number.shift if number.size != 0
    parsed_number.values
    end

    def self.parse_email (email_string)

        if email_string.match(/\w+[@]\w+[.]\w+/)
            parsed_email = [email_string]
        else
            parsed_email = ["Not Found"] 
        end
    end
end