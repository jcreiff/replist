class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :instrument

  scope :by_title, -> { order(:title)}
  scope :by_key, -> { order(:key)}

end
