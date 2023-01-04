=begin
P
Mad libs are a simple game where you create a story template with blanks for words.
You, or another player, then construct a list of words and place them into the story,
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and
injects those into a story that you create.

Rules:
- Create a story from user added words
  - Ask the user to type a noun, verb, adverb and adjective
- Using those words, create a sentence and display it

E

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

D

Variables to hold the inputs
Input: Strings
Output: string

A

- Ask the user for a verb
- Ask the user for a noun
- Ask the user for a adverb
- Ask the user for a adjective
- Create a method called madlibs
- In the method create a sentence and fill up the blanks with the inputs from the user
- Print he sentence
=end

def madlibs
  puts "Enter a noun: "
  noun = gets.chomp

  puts "Enter a verb: "
  verb = gets.chomp

  puts "Enter a adjective: "
  adjective = gets.chomp

  puts "Enter a adverb: "
  adverb = gets.chomp

  sentences = []

  sentences << "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentences << "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  sentences <<  "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

  puts sentences.sample
end

madlibs()
