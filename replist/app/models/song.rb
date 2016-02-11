class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :instrument

  scope :by_title, -> { order(:title)}
  scope :by_key, -> { order(:key)}

  def last_performed
    performed_on.strftime "%b %_d %Y"
  end
end
