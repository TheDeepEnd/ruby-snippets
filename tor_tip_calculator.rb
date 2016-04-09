# Default tip percentages
ten_percent = 10.0
fifteen_percent = 15.0
twenty_percent = 20.0

def calculate_tip(bill_total, tip_percent)
  print ("Total is $") + bill_total.to_s
  print "\n"
  print "Tip rate is " + tip_percent.to_s + "%"
  print "\n"
  print "Tip for bill is $"
  puts '%.2f' % (bill_total * (tip_percent/100)).to_s + "\n\n"
end

calculate_tip(57.48, ten_percent)
calculate_tip(121.40, fifteen_percent)
calculate_tip(23.37, twenty_percent)
