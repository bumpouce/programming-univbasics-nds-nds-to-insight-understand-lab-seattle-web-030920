$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds
end

def print_first_directors_movie_titles 
  nds = directors_database[0][:movies]
  movie_titles = []
  
  while movie_index < collection.length do
    movie_titles << collection[movie_index][:title]
    movie_index += 1
  end

  puts movie_titles.join ("\n")
end
