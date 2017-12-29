require "rails_helper"

feature "user selects a tournament" do
  scenario "from index" do
    tournament = create(:tournament)
    team_a = create(:team)
    team_b = create(:team)
    matches = [
      create(
        :match,
        blue_team: team_a,
        red_team: team_b,
        winner: team_a,
        tournament: tournament,
      ),
      create(
        :match,
        blue_team: team_a,
        red_team: team_b,
        winner: team_a,
        tournament: tournament,
      ),
      create(
        :match,
        blue_team: team_a,
        red_team: team_b,
        winner: team_a,
        tournament: tournament,
      ),
    ]

    visit root_path
    click_link tournament.name

    expect(page).to have_current_path tournament_path(tournament)
    expect(page).to have_content tournament.name
    expect(page).to have_content matches[0].blue_team.tag
    expect(page).to have_content matches[0].red_team.tag
    expect(page).to have_content matches[1].blue_team.tag
    expect(page).to have_content matches[1].red_team.tag
    expect(page).to have_content matches[2].blue_team.tag
    expect(page).to have_content matches[2].red_team.tag
  end
end
