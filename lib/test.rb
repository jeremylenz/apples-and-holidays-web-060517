require 'pry'

holiday_supplies =
    {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }


def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |season, holiday_h|
puts "#{season.to_s.capitalize}:"
holiday_h.each do |holiday, supply_list|
  formatted_holiday = holiday.to_s
  hol_chars = formatted_holiday.chars
  hol_chars[0].capitalize!
  underscore_index = hol_chars.index("_")
  while underscore_index != nil
    hol_chars[underscore_index] = " "   # Convert underscores to spaces
    hol_chars[underscore_index+1].capitalize! #Capitalize the next word
    underscore_index = hol_chars.index("_")
#    binding.pry
  end
  formatted_holiday = hol_chars.join

  puts "  #{formatted_holiday}: #{supply_list.join(", ")}"
end

end

end

all_supplies_in_holidays(holiday_supplies)
