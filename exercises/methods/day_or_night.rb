def time_of_day(daylight)
  if daylight
    "It's daytime!"
  else
    "It's nightime!"
  end
end

daylight = [true, false].sample
puts time_of_day(daylight)
