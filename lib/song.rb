require 'pry'
class Song 
  
  @@count = 0
  @@artists = []
  @@genres  = [] 
  
  def self.count
    @@count 
  end 
  
  def self.artists
    @@artists.uniq
    end 
 
 def self.genres
   @@genres.uniq
 end
 
 def self.genre_count
   genre_count = {"genre" =>"count"}
   genre_count.each do |key, value|
    
    end 
 end 
 
 def self.artist_count
   artist_count= {}
   artist_count.each do |key,value| 
    end
 end 
 
 attr_accessor :name, :artist, :genre, :artists

 
  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre 
  @@count +=1 
  @@artists << self.artist
  @@genres << self.genre 
  end 
  
end 

song = Song.new("song_title","artist", "genre")