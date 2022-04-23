#!/usr/bin/env ruby

require_relative 'anagram'
puts 'Enter two words or sentences to see if they are anagrams!'
word_one = gets.chomp
word_two = gets.chomp
puts Anagram.new(word_one, word_two).is_anagram?