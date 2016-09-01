class UpcomingMovies::CLI

  def call
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts "Upcoming Movies" 
    @movies = UpcomingMovies::Movies.today
    @movies.each.with_index(1) do |movie, i|
        puts "#{i} comes out on #{movie.date}. It's #{movie.length} and rated #{movie.rating}."
      end
  
  end

  def menu
    input = nil
    while input != "exit"
      puts "enter the number of the movie you would like to learn more about"
    input = gets.strip.downcase
    if input.to_i > 0
      the_movie = @movies[input.to_i-1]
      puts "#{i} comes out on #{movie.date}. It's #{movie.length} and rated #{movie.rating}."
      elsif input == "list"
      list_movies
    else
      puts "Not sure what you want here"
    end
    end
  end

def goodbye 
  puts "see you tomorrow for updated information"
end

end
