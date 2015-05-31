class Song < ActiveRecord::Base
  belongs_to :band
  has_many :song_genres, :dependent => :destroy
  has_many :genres, :through => :song_genres

  def associate_genre(genre_id)
    song_genres.build(genre_id: genre_id, user_id: user_id).save
  end
end
