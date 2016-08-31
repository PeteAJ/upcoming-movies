class UpcomingMovies::CLI

  def call
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts "Upcoming Movies"
  
    @movies = UpcomingMovies::Movies.today
  end

  def menu
    puts "enter the number of the movie you would like to learn more about"
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      puts "more info on 1..."
    when "2"
      puts "more info on 2..."
    end
  end

def goodbye 
  puts "see you tomorrow for updated information"
end

end
end