require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_firstname = nil
  data.each do |season_number, stats|
    if season_number == season
      stats.each do |details|
    if details["status"] == "Winner"
      winner_firstname = details["name"].split(" ")[0]
        end
      end
    end
  end
  winner_firstname
end

def get_contestant_name(data, occupation)
  data.each do |season_number, stats|
    stats.each do |details|
      if details["occupation"] == occupation
        return details["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
  data.each do |season_number, stats|
    stats.each do |details|
      if details["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, stats|
    stats.each do |details|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = data[season].collect do |details|
    details["age"].to_i
  end
  total_age = age
      
end
