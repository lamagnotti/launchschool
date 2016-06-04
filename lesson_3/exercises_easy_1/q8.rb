flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# unnested array ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

#to make it unnested we do this -->
puts flintstones.flatten!
