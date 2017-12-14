# # 03 - Research and Technical Documentation
# ### Thursday, Dec 14th
#
# ## Assignment
# ___
# For each of the methods listed below
#
# 1. Read the docs
# 2. Try out the method in ```irb``` using a few different values
# 3. Once you feel like you understand how it works, write down
#   * its arguments (name, data type, optional/required, default value if any)
#   * its return type
# 4. Write an example (in code) of how to use the method
#   * run your code to make sure your example is valid!
#
# The Ruby documentation can be alienating even for the most experienced developer. If (when) you get confused along the way, don't hesitate to ask for help! Also know that it's ok to not understand every word you read in the documentation. Your goal should be to piece together some understanding from the parts that do make sense.
#
#
# ### String
# ___
#   * ```length```
#       Arguments: no arguments
#       Return type: Integer
#       Exmaple code of how to use method:
puts "********* .length *********"
puts "\"This test string\" is #{"This test string".length} characters long including spaces"
#   * ```strip```
#       Arguments: no arguments
#       Return type: String
#       Exmaple code of how to use method:
puts "********* .length *********"
teststrip = "   My original message has whitespace at the beginning and end         "
puts "\"#{teststrip}\""
puts "Above is the test string. Below is the result using of .strip method:\n \"#{teststrip.strip}\""
#   * ```split```
#       Arguments: (pattern{string,regex,nil=default},limit{integer})
#       Return type: Array
#       Exmaple code of how to use method:
puts "********* .split *********"
testsplit = "one two three four five six"
puts testsplit
print "#{testsplit.split}\n"
#   * ```start_with?```
#       Arguments: (as many strings//at least one is required to function properly)
#       Return type: Boolean
#       Exmaple code of how to use method:
puts "********* .start_with? *********"
testswstring = "The King and I"
testswvar = "The"
print "Does \"#{testswstring}\" start with \"#{testswvar}\"? "
puts testswstring.start_with?(testswvar)

#
# ### Array
# ___
#   * ```first```
#       Arguments: None
#       Return type: Object or nil
#       Exmaple code of how to use method:
puts "********* .first *********"
seasons = ["spring", "summer","fall","winter"]
puts "#{seasons.first.capitalize} is the first season"
#   * ```delete_at```
#       Arguments: (integer index=req)
#       Return type: Object or nil
#       Exmaple code of how to use method:
puts "********* .delete_at *********"
seasons.delete_at(0)
puts "The rest of the seasons are #{seasons}"
#   * ```delete```
#       Arguments: object
#       Return type: object or nil
#       Exmaple code of how to use method:
puts "********* .delete *********"
seasons.delete("fall")
puts "Now Fall is gone: #{seasons}"
#   * ```pop```
#       Arguments: (integer amount)
#       Return type: object/s or nil
#       Exmaple code of how to use method:
puts "********* .pop *********"
seasons.pop
puts "The last season is gone and now all that is left is: #{seasons}"
# ### Hash
# ___
#   * ```to_a```
#       Arguments: none
#       Return type: array
#       Exmaple code of how to use method:
puts "********* .to_a *********"
animals = {
  fish: "swim",
  birds: "fly",
  cheetah: "runs"
}
puts "Animal hash: #{animals}"
puts "Hash converted to nested array: #{animals.to_a}"
#   * ```has_key?```
#       Arguments: (object key=req)
#       Return type: Boolean
#       Exmaple code of how to use method:
puts "********* .has_key? *********"
puts "Did the animals hash contain the :fish key? #{animals.has_key?(:fish)}"
#   * ```has_value?```
#       Arguments: (object val=req)
#       Return type: Boolean
#       Exmaple code of how to use method:
puts "********* .has_value? *********"
puts "Did any animal have a \"swim\" value? #{animals.has_value?("swim")}"
puts "Did any animal have a \"burrow\" value? #{animals.has_value?("burrow")}"
# ### Time
# ___
#   * ```now```
#       Arguments: (none}
#       Return type: object time
#       Exmaple code of how to use method:
puts "********* .now *********"
puts "Current date and time: #{Time.now}"
#
# ### File
# ___
#   * ```exist?```
#       Arguments: (string filename)
#       Return type: Boolean
#       Exmaple code of how to use method:
puts "********* .exist *********"
filereal = "./exercise.rb"
filefake = "./exercise2.rb"
puts "Does #{filereal} exist? #{File.exist?(filereal)}"
puts "Does #{filefake} exist? #{File.exist?(filefake)}"
#   * ```extname```
#       Arguments: (string filename)
#       Return type: string extension name
#       Exmaple code of how to use method:
puts "********* .extname *********"
puts "The extension of \".\/exercise.rb\" is #{File.extname("./exercise.rb")}"
