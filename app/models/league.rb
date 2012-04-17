class League < ActiveRecord::Base
  has_many :clubs
  has_many :divisions

  validates :name, :presence => true
end
