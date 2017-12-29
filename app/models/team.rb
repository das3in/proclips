class Team < ApplicationRecord
  belongs_to :league

  has_many :matches_as_blue_team,
    foreign_key: "blue_team_id",
    class_name: "Match"
  has_many :matches_as_red_team,
    foreign_key: "red_team_id",
    class_name: "Match"

  def matches
    matches_as_blue_team + matches_as_red_team
  end
end
