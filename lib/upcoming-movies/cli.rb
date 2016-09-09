require 'pry'
class UpcomingMovies::CLI

  def call
    list_movies
    menu
  end

  def list_movies
    #binding.pry
   
    puts "Upcoming Movies" 
    @movies = UpcomingMovies::Movies.all
    @movies.each.with_index(1) do |movie, i|
       puts "#{i}. #{movie.name} comes out on #{movie.date}. It's #{movie.length} and a #{movie.genre} movie."
    end
  end

  def menu
    input = nil
     x = nil
    while input != "exit"
    input = gets.strip.downcase
    if input.to_i < 24
     @movies.each.with_index(1) do |movie, input|
    puts "Description: #{input.movie.outline}"
    puts "Type 'exit' to quit."
    end
      elsif input == "list"
      list_movies
    elsif input == "exit"
      puts "see you next time for updated movie information"
    else
      puts "Not sure what you want here"
    end
    end
  end



end
