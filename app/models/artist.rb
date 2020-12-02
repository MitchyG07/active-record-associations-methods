class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    first = self.songs.first
    first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    genres = self.songs.map {|song| song.genre_id}.uniq 
    genres.size
  end
end
