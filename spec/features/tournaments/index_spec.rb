require "rails_helper"

feature "user visits index" do
  scenario "successfully" do
    tournament = create(:tournament)
    visit root_path

    expect(page).to have_content tournament.name
  end
end
