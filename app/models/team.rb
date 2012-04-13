class Team < ActiveRecord::Base
  belongs_to :club
  belongs_to :division
  has_many :homegames, :class_name => "Game", :foreign_key => "hometeam_id"
  has_many :awaygames, :class_name => "Game", :foreign_key => "awayteam_id"
  has_many :games

  def wins
    homegames.select{ |hg| hg.winner == self }.size + awaygames.select { |ag| ag.winner == self }.size
  end

  def losses
    homegames.select{ |hg| hg.loser == self }.size + awaygames.select { |ag| ag.loser == self }.size
  end

  def ties
    homegames.select{ |hg| hg.hometie == self }.size + awaygames.select{ |ag| ag.awaytie == self }.size
  end

  def games
    wins+losses+ties
  end

  def points
    (wins*3)+(ties)
  end

end
