class Team < ActiveRecord::Base
  belongs_to :club
  belongs_to :division
  has_many :games
end
