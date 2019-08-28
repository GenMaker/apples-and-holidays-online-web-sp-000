require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {


  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash [:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
   holiday_hash[:winter].each do |holiday,supplies|
      #binding.pry
    supplies << supply
   end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #binding.pry
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    #binding.pry
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    hash= []
    holiday_hash[:winter].collect do |holiday, values|
      values

  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.collect do |season, holiday_values|
    #binding.pry
    #when on season key
      #if season
        #upcase and transform to string
          #upcase_season = season.to_s.capitalize!
          puts"#{season.capitalize}:"
          holiday_values.collect do |name, supplies|
            #binding.pry
            puts (name.to_s.split("_").map{|word| word.capitalize}.join (" "))+
                  (supplies.to_s.split(" ").map{|word| word.capitalize}.join (" "))

          end
        #return transformed string
          #puts  "#{upcase_season}:"
      #   if holiday_values == :new_years
      #     # turn in to a string
      #     two_word_holiday= holiday_name.to_s
      #     #split the string,
      #     two_word_holiday.split (" ")
      #     #capitalize both words
      #     two_word_holiday.capitalize!
      #     #join back together
      #     two_word_hoiday.join
      #
      #     else
      #       # upcase  and transform to string
      #       holiday_name= holiday_values.to_s.capitalize!
      #       #return transformed string
      #       "#{holiday_values}:"
      #   end
      # end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
