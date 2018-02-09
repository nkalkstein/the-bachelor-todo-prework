require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |stats|
    if stats["status"] == "Winner"
      return stats["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    data[season].each do |stats|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    data[season].each do |stats|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    data[season].each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  ages = []
  sum = 0
    data[season].each do |stats|
      ages << stats["age"].to_f
    end
    sum = ages.inject(0, :+) / ages.length
    # arr.inject{ |sum, el| sum + el }.to_f / arr.size
    sum.round
end
