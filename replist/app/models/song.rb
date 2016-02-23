class Song < ActiveRecord::Base
  belongs_to :artist

  scope :by_title, -> { order(:title) }
  scope :by_key, -> { order(:key) }
  scope :by_date, -> { order(:performed_on) }
  scope :by_instrument, -> { order(:instrument) }
  scope :by_status, -> { order(:status) }

  def last_performed
    performed_on.strftime "%b %_d %Y"
  end
end
