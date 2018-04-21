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

  data.each do |season_number, stats|
    stats.each do |details|
      if details["hometown"] = hometown
   
      end
    end
  end
  counter.length
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
