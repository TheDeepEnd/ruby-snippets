# This program solves a challenge where a the program must accept user input
# for a month and a day, validate that input, and use the date methods
# native to the language to calculate number of days till that day.
# The program must get today's date from the system internal date using
# the language specific date functions.
# In the event that a user inputs a day that is earlier than today,
# the program must give the number of days till that day next year.

require 'date'

def get_month_and_day
  # February is the exception with 28 days
  months_with_31_days = [ 1, 3, 5, 7, 8, 10, 12 ]
  months_with_30_days = [ 4, 6, 9, 11]
  number_of_days      = 0

  begin
    print "Please enter a month as a number (1-12): "
    target_month = gets

    Integer(target_month)
    if !(1..12).include?(target_month.to_i)
      raise
    end
  rescue
    puts  "Oops, did you enter the month as a number in a valid range? (1-12)"
    retry
  end

  case target_month.to_i
  when 2
    number_of_days = 28
    puts "February"
  when * months_with_31_days
    number_of_days = 31
  when * months_with_30_days
    number_of_days = 30
  end

  begin
    print      "Please enter a day as a number" +
               "(1-#{number_of_days}): "
    target_day = gets

    Integer(target_day)
    if !(1..number_of_days).include?(target_day.to_i)
      raise
    end
  rescue
    puts       "Oops, did you enter the day as a number in a valid range?" +
               "(1-#{number_of_days})"
    retry
  end

  target_date = Date.new(
                  Date.today.year  ,
                  target_month.to_i,
                  target_day.to_i  )

  return target_date
end

def get_days_till_date( target )
  today = Date.today
  difference_between_dates = target.mjd - today.mjd
  days_till_date           = 0

  if    difference_between_dates < 0
    days_till_date = difference_between_dates + 365
  elsif difference_between_dates > 0
    days_till_date = difference_between_dates
  else
    days_till_date = 0
  end

  return days_till_date
end

puts "Today is #{Date.today}."

target_date    = get_month_and_day
days_till_date = get_days_till_date( target_date )

puts "You entered #{target_date.month}/#{target_date.day}."

if days_till_date == 0
  puts "That day is today!"
else
  puts "There are #{days_till_date} days until your specified day."
end
