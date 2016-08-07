name = 'Roger'

# If true, will return 0. If the return value == 0 then we know that
# the strings are equal (despite the case of the strings)
puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0
