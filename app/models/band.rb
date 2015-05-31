class Band < ActiveRecord::Base
  has_many :songs, :dependent => :destroy
  has_many :genres, :through => :songs
  validates :name, :uniqueness => {:case_sensitive => false, :scope => :user_id}
end
