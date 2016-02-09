class Artist < ActiveRecord::Base
  has_many :songs

  scope :by_name, -> {order(:name)}

end
