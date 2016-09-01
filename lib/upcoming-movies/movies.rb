class UpcomingMovies::Movies
  attr_accessor :name, :date, :length, :url

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
  movie_1.rating = "PG-13"
  movie_1.length = "107 min"
  movie_1.url = "http://www.imdb.com/title/tt1389139/?ref_=cs_ov_tt"

  movie_2 = self.new
  movie_2.name = "Sully"
  movie_2.date = "Friday, September 9, 2016"
  movie_2.rating = "PG-13"
  movie_2.length = "96 min"
  movie_2.url = "http://www.imdb.com/title/tt3263904/?ref_=cs_ov_tt"


[movie_1, movie_2]
  end

  def self.scrape_imdb
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-coming-soon/?ref_=nv_mv_cs_4"))
    name = doc.search("td.overview-top h4 a").text
    date = doc.search("h4.li_group a")[0].text
    length = doc.search("time").text
    binding.pry
  end

 

end