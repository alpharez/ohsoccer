class Game < ActiveRecord::Base
  belongs_to :team, :foreign_key => "hometeam_id"
  belongs_to :team, :foreign_key => "awayteam_id"
end
