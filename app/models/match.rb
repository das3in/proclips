class Match < ApplicationRecord
  belongs_to :blue_team, class_name: "Team"
  belongs_to :red_team, class_name: "Team"
  belongs_to :winner, class_name: "Team"
  belongs_to :tournament

  has_many :teamfights
end
