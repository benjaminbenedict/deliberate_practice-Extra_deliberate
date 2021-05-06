# Hashes
# (In these exercises, hashes are referred to as hash tables. In Ruby, they’re simply called hashes, and in JavaScript, they’re known as objects.

# #1
# The following hash table represents a particular person: { firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" }
# Write a function that accepts this type of hash table and returns the person's email address.

# Example:
# Input: { firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" }
# Output: "ada.lovelace@email.com"

# person = { firstName: "Ada", lastName: "Lovelace", email: "ada.lovelace@email.com" }

# def what_email(hash)
#   return hash[:email]
# end

# p what_email(person)

# #2
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 }
# Write a function that accepts a hash table like this and adds 200 shirts to the "yellow" category. The function can then return the updated hash table.

# inventory = { red: 500, blue: 615, green: 484, yellow: 332 }

# def needs_more_yellow(hash)
#   hash[:yellow] += 200
# return hash
# end

# p needs_more_yellow(inventory)

# #3
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that accepts 3 parameters: The hash table, a string representing a brand new color, and a number of how many new color shirts there are. The function should then add this color and its number to the hash table, and then return the updated hash table.

# inventory = { red: 500, blue: 615, green: 484, yellow: 332 }

# def new_color_adder(hash, color_name, number_of_shirts)
#   hash[color_name.to_sym] = number_of_shirts
#   puts hash
# end

# new_color_adder(inventory, "indigo", 454)

# #4
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that accepts a hash table like this and returns the total number of shirts in inventory.

# inventory = { red: 500, blue: 615, green: 484, yellow: 332 }

# def hash_sum(hash)
#   sum = 0
#   hash.each { |k, v| sum += v }
#   return sum
# end

# p hash_sum(inventory)
# #5
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that accepts a hash table like this and returns the shirt color with the greatest number.

inventory = { red: 500, blue: 615, green: 484, yellow: 332 }

# def greatest_color(hash)
#   largest_number_key = hash.keys[0]
#   largest_number = hash.values[0]
#   hash.each { |k, v|
#     if v > largest_number
#       largest_number_key = k
#     end
#   }
#   return largest_number_key
# end

# p greatest_color(inventory)

# #6
# The following hash table represents the inventory of shirts for a clothing store: { red: 500, blue: 615, green: 484, yellow: 332 } (same as previous exercise)
# Write a function that adds 10 to each shirt color, and then return the updated hash table.

# inventory = { red: 500, blue: 615, green: 484, yellow: 332 }

# def i_got_10_on_it(hash)
#   new_hash = hash.each { |k, v| hash[k] = v += 10 }
#   return new_hash
# end

# p i_got_10_on_it(inventory)

# #7
# The following array represents a bad attempt at storing data of U.S. states and their capitals:
# ["Illinois", "Springfield", "New York", "Albany", "Hawaii", "Honolulu", "Colorado": "Denver", "Idaho", "Boise"]
# Write a function that accepts an array in this format and returns the same data as a proper hash table, like this:
# {"Illinois": "Springfield", "New York": "Albany", "Hawaii": "Honolulu", "Colorado": "Denver", "Idaho": "Boise"}

# While loop
# def goverment_is_useless(array)
#   i = 0
#   state_hash = Hash.new
#   while i < array.length
#     j = i + 1
#     state_hash[array[i].to_sym] = array[j]
#     i += 2
#   end
#   return state_hash
# end

#inject method
# def goverment_is_useless(array)
#   i = 0
#   state_hash = array.inject(Hash.new) { |hash, key| }

#   return state_hash
# end

# states = ["Illinois", "Springfield", "New York", "Albany", "Hawaii", "Honolulu", "Colorado", "Denver", "Idaho", "Boise"]
# p goverment_is_useless(states)

# #8
# The following array contains a record of each vote for a particular political candidate. Each string represents a vote. For example: ["Gutierrez", "Johnson", "Johnson", "Johnson", "Gutierrez", "Johnson", "Gutierrez", "Johnson"]
# Write a function that accepts an array like this and returns a hash table showing how many votes each candidate received, like this:
# {"Gutierrez": 3, "Johnson": 5}
# votes = ["Gutierrez", "Johnson", "Johnson", "Johnson", "Gutierrez", "Johnson", "Gutierrez", "Johnson"]

# def vote_counter(array)
#   i = 0
#   vote_hash = {}
#   while i < array.length
#     if vote_hash.key?(array[i])
#       vote_hash[array[i]] += 1
#     else
#       vote_hash[array[i]] = 1
#     end
#     i += 1
#   end
#   return vote_hash
# end

# p vote_counter(votes)

# #9
# Write a function that accepts a string and returns a hash table displaying the frequency of each character.

# Example:
# Input: "abcdbcabcdcbaz"
# Output: {"a": 3, "b": 4, "c", 4, "d": 2, "z": 1}

# def letter_counter(string)
#   output_hash = {}
#   i = 0
#   while i < string.length
#     if output_hash.key?(string[i])
#       output_hash[string[i]] += 1
#     else
#       output_hash[string[i]] = 1
#     end
#     i += 1
#   end
#   return output_hash
# end

# input = "abcdbcabcdcbaz"
# p letter_counter(input)

# #10
# Write a function that accepts a hash table of political candidates and their number of votes and return the candidate with the most votes.
# Example:
# Input: {"Gutierrez": 954, "Johnson": 1005, "Warren": 333, "Bloomberg": 5}
# Output: "Johnson"

def libritarians_r_lame(hash)
  best_candidate = ""
  max_vote = 0
  hash.each {
    |k, v|
    if v > max_vote
      max_vote = v
      best_candidate = k.to_s
    end
  }
  return best_candidate
end

input = { "Gutierrez": 954, "Johnson": 1005, "Warren": 333, "Bloomberg": 5 }

p libritarians_r_lame(input)
