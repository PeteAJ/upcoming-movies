class UpcomingMovies::Movies
  attr_accessor :name, :date, :length, :genre, :outline

  def self.today
    #return instances of movies
     # puts <<-DOC
    #1. The Disappointments Room
    #2. Sully
    #DOC

    #scrape box office mojo for movie release data
    #UpcomingMovies::Movies.new.movies
    self.scrape_movies
end



    def self.scrape_movies
      movies = []

      movies << self.scrape_imdb
#go to boxoffice mooho, find the upcoming movie
#extract properties
#instantiate a movie

  movie_1 = self.new
  movie_1.name = "When the Bough Breaks"
  movie_1.date = "Friday, September 9, 2016"
  movie_1.length = "107 min"
  movie_1.genre = "horror"
   movie_1.outline = "a story about.."

  movie_2 = self.new
  movie_2.name = "Sully"
  movie_2.date = "Friday, September 9, 2016"
  movie_2.length = "96 min"
  movie_2.genre = "romantic comedy"
   movie_2.outline = "the story of"


[movie_1, movie_2]
  end

  def self.scrape_imdb
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-coming-soon/?ref_=nv_mv_cs_4"))
    
    movie = self.new
    movie.name = doc.search("td.overview-top h4 a").text
    movie.date = doc.search("h4.li_group a")[0].text
    movie.length = doc.search("time").text
    movie.genre = doc.search("td.overview-top p span:nth-child(1)")[0].text
    movie.outline = doc.search("tr td div.outline")[0].text
    movie
   

  end

 

end