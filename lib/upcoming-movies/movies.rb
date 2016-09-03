require 'pry'
class UpcomingMovies::Movies
  attr_accessor :name, :date, :length, :genre, :outline

  @@all = []

  def initialize(attributes ={})
    @name = attriubtes[:name]
    @date =
    @length =
    @genre =
    @outline = 
    @@all << self
  end

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
    binding.pry
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-coming-soon/?ref_=nv_mv_cs_4"))
    list_of_movies = doc.search("div.list.detail div.list_item")
    list_of_movies.each do |data|

    self.new({
      name: data.css("td.overview-top h4 a").text
      movie.date = data.css("h4.li_group a").text
      movie.length = data.css("time").text
      movie.genre = data.css("td.overview-top p span:nth-child(1)").text
      movie.outline = data.css("tr td div.outline").text
    })
    
  


    #ibinding.pry
   
  end

  

end