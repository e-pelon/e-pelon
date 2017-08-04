# Write a #french_ssn_info method extracting infos from French SSN (Social Security Number) using regexp.
# Valid French SSN numbers have the following pattern:
# "1 84 12 76 451 089 46"
# Gender (1 == man, 2 == woman)
# Year of birth (84)
# Month of birth (12)
# Department of birth (76, basically included between 01 and 99)
# 6 random digits (451 089)
# A 2 digits key (46, we'll see later how it can be deduced from the rest of the digits)
# The method must return the following strings:

#french_ssn_info("1 84 12 76 451 089 46")
#=> "a man, born in December, 1984 in Seine-Maritime."

#"1 84 12 76 451 089 46"

def french_ssn_info(ssn)
  rule = /^(?<gender>^([1|2])\W+(?<year>\d{2})\W+(?<month>[0][1-9]|[1][0-2])
  \W+(?<dept>[1-99]{2})\W+(?<random>\d{3}\W+\d{3}\W+(?<key>\d{2}))$/ #Regex syntax

  result = ssn.match(rule)
  unless result
    puts "its not a valid SSN"
  return
end
puts "Oh, great number"
end

#"1 84 12 76 451 089 46".match(rule)
