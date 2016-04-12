# Tip calculating program (# will start a single line comment)
=begin
  =begin and =end are used to handle multi-line comments in ruby.
  The challenge for this program is to write a program that accepts a user's input
  for a bill total and a tip percentage, and returns the corresponding tip value.

  Here's the example input and output
  ruby tor_tip_calculator.rb
  Please enter your bill total value (Don't enter a currency symbol): $
  >57.38
  Please enter the tip percentage as a number (e.g. 10, 15.00, 20.34...):
  >10
  Total is $57.38
  Tip rate is 10.0%
  Tip for bill at 10.0% is $5.74
=end

# Functions in ruby don't use {} braces, but instead use def and end.
# e.g. def function(optional_parameter1, optional_parameter2...)
#        function_body
#      end
def calculate_tip(bill_total, tip_percent)
  # You can format float precision with the format '%.<number>f' % <value>
  puts "Total is $" + "%.2f" % bill_total
  puts "Tip rate is " + "%.2f" % tip_percent + "%"
  print "Tip for bill at " + "%.2f" % tip_percent + "%" + " is $"
  puts '%.2f' % (bill_total * (tip_percent/100.00)) + "\n"
  # Double quotes ("") or single quotes('') can both be used for strings
end

# In Ruby, puts will print a new line at the end of the buffer, whereas print will not.

print "Please enter your bill total value (Don't enter a currency symbol): $"
total = gets
print "Please enter the tip percentage as a number (e.g. 10, 15.00, 20.34...): "
tip_percent = gets


begin
  # In Ruby you can use object superclasses like Integer and Float to check a value's format and then use rescue to catch the exception if it's not the correct type.
  Float(total)
  Float(tip_percent)
rescue
  puts "Oops, did you enter the right format for the total and tip percentage? (e.g. 30.47 and 15)"
else
  calculate_tip(total.to_f, tip_percent.to_f)
end
