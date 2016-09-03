class UpcomingMovies::CLI

  def call
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts "Upcoming Movies" 

    @movies = UpcomingMovies::Movies.today
array = [0,1, 2, 3, 4, 5, 6]
array.each { |x|
    @movies.each.with_index(x) do |movie, i|
       puts "#{i}. #{movie.name} comes out on #{movie.date}. It's #{movie.length} and a #{movie.genre} movie."
   
      end
    }

    
  
  end



  def menu
    input = nil
    while input != "exit"
      puts "enter the number of the movie you would like to learn more about"
    input = gets.strip.downcase
    if input.to_i > 0 && input.to_i <= 7
      @movies = UpcomingMovies::Movies.today
    @movies.each.with_index(1) do |movie, i|
    puts "Description: #{movie.outline}"
    puts "Type 'exit' to quit."
  end
      elsif input == "list"
      list_movies
    else
      puts "Not sure what you want here"
    end
    end
  end

def goodbye 
  puts "see you next for updated movie information"
end

end
