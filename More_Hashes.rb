# More Hashes

# #1
# The following array of hash tables represents a list of books. This will be the basis for Exercises #1 - 6.
books = [
  { title: "Hop on Pop", author: "Dr. Seuss", pageCount: 17 },
  { title: "Mrs. Dalloway", author: "Virginia Woolf", pageCount: 566 },
  { title: "Harry Potter and the Sorcerer's Stone", author: "J. K. Rowling", pageCount: 321 },
  { title: "To the Lighthouse", author: "Virginia Woolf", pageCount: 288 },
  { title: "Anna Karenina", author: "Leo Tolstoy", pageCount: 825 },
  { title: "The Adventures of Tom Sawyer", author: "Mark Twain", pageCount: 390 },
  { title: "The Cat in the Hat", author: "Dr. Seuss", pageCount: 24 },
  { title: "War and Peace", author: "Leo Tolstoy", pageCount: 1821 },
  { title: "Green Eggs and Ham", author: "Dr. Seuss", pageCount: 22 },
  { title: "The Adventures of Huckleberry Finn", author: "Mark Twain", pageCount: 406 },
]
# Write a function that accepts this type of hash table and returns an array containing the title of each book.
# Expected Output:
# [
#   'Hop on Pop',
#   'Mrs. Dalloway',
#   "Harry Potter and the Sorcerer's Stone",
#   'To the Lighthouse',
#   'Anna Karenina',
#   'The Adventures of Tom Sawyer',
#   'The Cat in the Hat',
#   'War and Peace',
#   'Green Eggs and Ham',
#   'The Adventures of Huckleberry Finn'
# ]

# def title_finder(array_hash)
#   i = 0
#   result = []
#   while i < array_hash.length
#     result << array_hash[i][:title]
#     i += 1
#   end
#   return result
# end

# p title_finder(books)

# #2
# Write a function that accepts this type of hash table and returns an array of the books whose page counts are greater than 500.
# Expected Output:
# [
#   { title: 'Mrs. Dalloway', author: 'Virginia Woolf', pageCount: 566 },
#   { title: 'Anna Karenina', author: 'Leo Tolstoy', pageCount: 825 },
#   { title: 'War and Peace', author: 'Leo Tolstoy', pageCount: 1821 }
# ]

# def its_over_500(hash_table)
#   result = []
#   hash_table.each { |hash|
#     if hash[:pageCount] > 500
#       result << hash
#     end
#   }
#   return result
# end

# p its_over_500(books)

# #3
# Write a function that accepts this type of hash table and returns the total pages of all the books combined.
# Expected Output: 4680

# def with_our_powers_combined(hash_table)
#   hash_table.reduce(0) { |s, hash| s += hash[:pageCount] }
# end

# p with_our_powers_combined(books)

# #4
# Write a function that accepts this type of hash table and returns the total pages of all books written by Dr. Seuss.
# Expected Output: 63
# def seuss_is_suss(hash_table)
#   hash_table.reduce(0) { |sum, hash| hash[:author] == "Dr. Seuss" ? sum += hash[:pageCount] : sum }
# end

# p seuss_is_suss(books)
# #5
# Write a function that accepts this type of hash table and returns the book with the highest page count.
# Expected Output: {title: "War and Peace", author: "Leo Tolstoy", pageCount: 1821}

# def max_page_count(hash_table)
#   hash_table.reduce(hash_table[0]) { |max_hash, hash| hash[:pageCount] > max_hash[:pageCount] ? hash : max_hash }
# end

# p max_page_count(books)

# #6
# Write a function that accepts this type of hash table and returns an array of strings that contain each book and author in the following format: "Hop on Pop by Dr. Seuss"
# Expected Output:
# [
#   'Hop on Pop by Dr. Seuss',
#   'Mrs. Dalloway by Virginia Woolf',
#   "Harry Potter and the Sorcerer's Stone by J. K. Rowling",
#   'To the Lighthouse by Virginia Woolf',
#   'Anna Karenina by Leo Tolstoy',
#   'The Adventures of Tom Sawyer by Mark Twain',
#   'The Cat in the Hat by Dr. Seuss',
#   'War and Peace by Leo Tolstoy',
#   'Green Eggs and Ham by Dr. Seuss',
#   'The Adventures of Huckleberry Finn by Mark Twain'
# ]
# def reformater(hash_table)
#   hash_table.inject(Array.new) { |array, hash| array << "#{hash[:title]} by #{hash[:author]}" }
# end

# p reformater(books)
# #7
# Here's an array of strings, with each string representing a vote for a particular political candidate.
# ["Gutierrez", "Johnson", "Johnson", "Johnson", "Gutierrez", "Johnson, "Gutierrez"]
# Write a function that returns a hash table containing the tally of votes for each candidate.
# Expected Output: {"Gutierrez": 3, "Johnson": 4}
# votes = ["Gutierrez", "Johnson", "Johnson", "Johnson", "Gutierrez", "Johnson", "Gutierrez"]

# def vote_counter(array)
#   array.each_with_object(Hash.new(0)) { |candidate, hash| hash[candidate] ? hash[candidate] += 1 : hash[candidate] = 1 }
# end

# p vote_counter(votes)

# #8
# Extend the previous function to return the winner of the election (that is, the candidate with the most votes).
# Expected Output: "Johnson"
# #9
# Write a function that accepts a string and returns a count of how many of each character there are.
# Example Input: "banana"
# Output: {"b": 1, "a": 3, "n": 2}
# #10
# Write a function that accepts two hash tables and returns whether they're equal. (In JavaScript, the === operator doesn't work on hash tables, so you'll need to use a loop.)
