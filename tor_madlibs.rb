# Greeting and mad libs program
=begin
  =begin and =end are used to handle multi-line comments in ruby.
  The challenge for this program is to write a program that prompts a user for a name,
  then respond with a greeting, the length of their name, and start a game of mad libs.

  Here's the example input and output
  ruby tor_madlibs.rb
  Hi! Please enter your name:
  >Tor
  Nice to meet you Tor! Your name is 3 characters long.
  How about an ice breaker? Let's play a game of mad libs.
  Here's the phrase, let's fill in the blanks!
  You <adverb> <verb> your <adjective> <noun>. That's funny!
  Please enter an adverb:
  >slowly
  Please enter a verb:
  >cook
  Please enter an adjective:
  >green
  Please enter a noun:
  >ham
  You slowly cook your green ham. That's funny!
=end

# Functions in ruby can take parameters and return a value.
def greeting(name)
  # In ruby, you can put an object inside #{} to turn it into a string and include it as is.
  # Also calling strip on an object will trim white spaces and new lines.
  response = "Nice to meet you #{name.strip}! Your name is " + name.strip.length.to_s + " characters long."
  return response
end

def mad_libs(noun, verb, adverb, adjective)
  mad_lib = "You " + adverb.strip + " " + verb.strip + " your " + adjective.strip + " " + noun.strip + ". That's funny!"
  return mad_lib
end

print "Hi! Please enter your name: "
your_name = gets

# You can call functions with the name and whatever parameters it wants.
puts greeting(your_name)

puts "How about a ice breaker? Let's play a game of mad libs.\nHere's the phrase, let's fill in the blanks!\nYou <adverb> <verb> your <adjective> <noun>. That's funny!"

print "Please enter an adverb: "
your_adverb = gets

print "Please enter a verb: "
your_verb = gets

print "Please enter an adjective: "
your_adjective = gets

print "Please enter a noun: "
your_noun = gets

puts mad_libs(your_noun, your_verb, your_adverb, your_adjective)
