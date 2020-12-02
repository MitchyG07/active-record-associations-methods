class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = self.songs.map {|songs| songs.artist_id}.uniq 
    artists.length
  end

  def all_artist_names
    self.artists.map {|artist| artist.name}.uniq
  end
end
