require 'pry'
class UpcomingMovies::Movies
  attr_accessor :name, :date, :length, :genre, :outline

  @@all = []

  def initialize(attributes ={})
    @name = attriubtes[:name]
    @date = attriubtes[:date]
    @length = attriubtes[:length]
    @genre = attriubtes[:genre]
    @outline = attriubtes[:outline]
    @@all << self
  end

  def self.list_movies
    #return instances of movies
     # puts <<-DOC
    #1. The Disappointments Room
    #2. Sully
    #DOC

    #scrape box office mojo for movie release data
    #UpcomingMovies::Movies.new.movies
    #self.scrape_movies
end



    def self.scrape_movies
      movies = []

      movies << self.scrape_imdb

      movies
  end


  def self.scrape_imdb
    
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-coming-soon/?ref_=nv_mv_cs_4"))
    list_of_movies = doc.search("div.list.detail div.list_item")
    list_of_movies.each do |data|

    self.new({
      name: data.css("td.overview-top h4 a").text,
      date: data.css("h4.li_group a").text,
      length: data.css("time").text,
      genre: data.css("td.overview-top p span:nth-child(1)").text,
      outline: data.css("tr td div.outline").text
    })
    
  end


    #binding.pry
   
  end

  

end