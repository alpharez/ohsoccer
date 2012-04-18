class Club < ActiveRecord::Base
  belongs_to :league
  has_many :teams
  has_many :users

  validates :name, :presence => true
end
