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

      movies
  end


  def self.scrape_imdb
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-coming-soon/?ref_=nv_mv_cs_4"))
    
    movie = self.new
    movie.name = doc.search("td.overview-top h4 a")[0].text
    movie.date = doc.search("h4.li_group a")[0].text
    movie.length = doc.search("time")[0].text
    movie.genre = doc.search("td.overview-top p span:nth-child(1)")[0].text
    movie.outline = doc.search("tr td div.outline")[0].text
    movie

    #binding.pry
   

  end

 

end