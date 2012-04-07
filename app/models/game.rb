class Game < ActiveRecord::Base
  belongs_to :team, :foreign_key => "hometeam_id"
  belongs_to :team, :foreign_key => "awayteam_id"
  belongs_to :division
  has_one :field
end
