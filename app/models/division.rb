class Division < ActiveRecord::Base
  belongs_to :league
  has_many :teams
  has_many :games
end
