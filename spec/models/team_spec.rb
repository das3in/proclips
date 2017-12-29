require "rails_helper"

describe Team do
  context "associations" do
    it "should have valid associations" do
      should belong_to(:league)
      should have_many(:matches_as_blue_team)
      should have_many(:matches_as_red_team)
    end
  end

  describe "#matches" do
    it "should return all matches played it in" do
      team_a = create(:team)
      team_b = create(:team)
      team_c = create(:team)
      match_1 = create(
        :match,
        blue_team_id: team_a.id,
        red_team_id: team_b.id,
        winner_id: team_a.id,
      )
      match_2 = create(
        :match,
        blue_team_id: team_a.id,
        red_team_id: team_b.id,
        winner_id: team_a.id,
      )
      match_3 = create(
        :match,
        blue_team_id: team_a.id,
        red_team_id: team_c.id,
        winner_id: team_a.id,
      )

      expect(team_b.matches.size).to eq(2)
      expect(team_b.matches).to include(match_1, match_2)
      expect(team_b.matches).not_to include(match_3)
    end
  end
end
