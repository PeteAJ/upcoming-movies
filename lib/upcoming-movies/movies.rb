class UpcomingMovies::Movies
  attr_accessor :name, :date, :distributor, :release, :url

  def self.today
    #return instances of movies
      puts <<-DOC
    1. The Disappointments Room
    2. Sully
    DOC

  movie_1 = self.new
  movie_1.name = "The Disappointments Room"
  movie_1.date = "Tuesday, September 6, 2016"
  movie_1.distributor = "Relativity"
  movie_1.release = "wide"
  movie_1.url = "http://www.boxofficemojo.com/movies/?id=disappointmentsroom.htm"

  movie_2 = self.new
  movie_2.name = "Sully"
  movie_2.date = "Friday, September 9, 2016"
  movie_2.distributor = "Warner Bros."
  movie_2.release = "wide"
  movie_2.url = "http://www.boxofficemojo.com/movies/?id=sully.htm"


[movie_1, movie_2]
  end

 

end