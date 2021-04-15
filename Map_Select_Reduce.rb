# Map, Select, and Reduce
# #1
# Write a function that accepts an array of numbers and returns an array with each number increased by 7.
# Example:
# Input: [1, 2, 3]
# Output: [8, 9, 10]

#Map way

# numbers = [1, 2, 3]

# def seven_up(array)
#   return array.map { |n| n + 7 }
# end

# p seven_up(numbers)
# #2
# Write a function that accepts an array of strings and returns an array with each string's length.
# Example:
# Input: ["hello", "goodbye"]
# Output: [5, 7]

#Map way

# words = ["hello", "goodbye"]

# def word_count(array)
#   return array.map { |word| word.length }
# end

# p word_count(words)

# #3
# Write a function that accepts an array of numbers and returns an array with each number divided by 2.
# Example:
# Input: [1, 2, 3]
# Output: [0.5, 1.0, 1.5]
#Map way

# numbers = [1, 2, 3]

# def divide_by2(array)
#   return array.map { |num| (num.to_f) / 2 }
# end

# p divide_by2(numbers)

# #4
# Write a function that accepts an array of strings and returns an array with each string's first letter only.
# Example:
# Input: ["hello", "goodbye"]
# Output: ["h", "g"]

# words = ["hello", "goodbye"]

# def first_letter(array)
#   return array.map { |word| word[0] }
# end

# p first_letter(words)

# #5
# Write a function that accepts an array of numbers and returns an array with each number converted into a string.
# Example:
# Input: [1, 2, 3]
# Output: ["1", "2", "3"]

# numbers = [1, 2, 3]

# def num_to_string(array)
#   return array.map { |num| num.to_s }
# end

# p num_to_string(numbers)

# #6
# Write a function that accepts an array of numbers and returns a new array with only the even numbers.
# Example:
# Input: [2, 4, 5, 1, 8, 9, 7]
# Output: [2, 4, 8]

# numbers = [2, 4, 5, 1, 8, 9, 7]

# def even_filter(array)
#   return array.select { |num| num.even? }
# end

# p even_filter(numbers)

# #7
# Write a function that accepts an array of strings and returns an array with only the strings shorter than 4 letters.
# Example:
# Input: ["a", "man", "a", "plan", "a", "canal", "panama"]
# Output: ["a", "man", "a", "a"]

# input = ["a", "man", "a", "plan", "a", "canal", "panama"]

# def less_than4(array)
#   return array.select { |word| word.length < 4 }
# end

# p less_than4(input)

# #8
# Write a function that accepts an array of numbers and returns an array with only the numbers less than 10.
# Example:
# Input: [8, 23, 0, 44, 1980, 3]
# Output: [8, 0, 3]

# input = [8, 23, 0, 44, 1980, 3]

# def lest_than10(array)
#   return array.select { |n| n < 10 }
# end

# p lest_than10(input)

# #9
# Write a function that accepts an array of strings and returns an array with only the strings that don't start with the letter "b".
# Example:
# Input: ["big", "little", "good", "bad"]
# Output: ["little", "good"]

# input = ["big", "little", "good", "bad"]

# def i_hate_b(array)
#   # to check for array use is_a? and to check for string use is_s?

#   return array.reduce(Array.new) { |a, s| s[0].downcase == "b" ? a : a << s }
# end

# p i_hate_b(input)
# #10
# Write a function that accepts an array of numbers and returns an array with only the odd numbers.
# Example:
# Input: [2, 4, 5, 1, 8, 9, 7]
# Output: [5, 1, 9, 7]

# input = [2, 4, 5, 1, 8, 9, 7]

# def i_like_them_odds(array)
#   return array.select { |n| n.odd? }
# end

# p i_like_them_odds(input)

# #11
# Write a function that accepts an array of numbers and returns the sum of all the numbers.
# Example:
# Input: [5, 10, 8, 3]
# Output: 26

# #12
# Write a function that accepts an array of numbers and returns the smallest number.
# Example:
# Input: [5, 3, 8, 10]
# Output: 3

# #13
# Write a function that accepts an array of strings and returns the total length of all the strings.
# Example:
# Input: ["volleyball", "basketball", "badminton"]
# Output: 29

# input = ["volleyball", "basketball", "badminton"]

# def total_string_count(array)
#   return array.inject(0) { |count, string| count += string.length }
# end

# p total_string_count(input)

# #14
# Write a function that accepts an array of strings and returns a single string that combines all the individual strings separated by dashes.
# Example:
# Input: ["volleyball", "basketball", "badminton"]
# Output: "volleyball-basketball-badminton"

# input = ["volleyball", "basketball", "badminton"]

# def dashes_are_so_hot_right_now(array)
#   return array.inject() { |combo, string| combo + "-" + string }
# end

# p dashes_are_so_hot_right_now(input)

# #15
# Write a function that accepts an array of numbers and returns the greatest number.
# Example:
# Input: [5, 10, 8, 3]
# Output: 10

input = [5, 10, 8, 3]

def there_can_only_be_one(array)
  return array.reduce() { |greatest, number| number > greatest ? greatest = number : greatest }
end

p there_can_only_be_one(input)
