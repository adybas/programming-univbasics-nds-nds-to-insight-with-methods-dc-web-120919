require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  directors_index = 0
  result = {}

    while directors_index < nds.length do
      result[directors_database[directors_index][:name]] = gross_for_director(director_data)
      directors_index += 1
    end
    result
  end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 #binding.pry
 movie_count = 0
 total_gross = 0
  while movie_count < director_data[:movies].length do
    total_gross += director_data[:movies][movie_count][:worldwide_gross]
    movie_count += 1
  end
  total_gross
end
