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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].each do |key, array|
array << "Balloons"
end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
supply_lists = holiday_hash[:winter].values
all_winter_supply_list = []
supply_lists.each do |list|
list.each do |item|
all_winter_supply_list << item
end
end
all_winter_supply_list
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holiday_h|
puts "#{season.to_s.capitalize}:"
holiday_h.each do |holiday, supply_list|
  formatted_holiday = holiday.to_s
  hol_chars = formatted_holiday.chars
  hol_chars[0].capitalize!  #Capitalize the first word.  I can't use the capitalize method on the entire string because it only capitalizes the first word.
  underscore_index = hol_chars.index("_")
  while underscore_index != nil
    hol_chars[underscore_index] = " "   # Convert underscores to spaces
    hol_chars[underscore_index+1].capitalize! #Capitalize the next word
    underscore_index = hol_chars.index("_")
  #  binding.pry
  end
  formatted_holiday = hol_chars.join

  puts "  #{formatted_holiday}: #{supply_list.join(", ")}"
end

end

end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holidays_with_bbq = []

holiday_hash.each do |season, holiday_h|
  holiday_h.each do |holiday, supply_list|
    if supply_list.include?("BBQ")
      holidays_with_bbq << holiday
    end  
  end

end

holidays_with_bbq
end
