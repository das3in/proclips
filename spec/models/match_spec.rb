require "rails_helper"

describe Match do
  context "associations" do
    it "should have valid associations" do
      should belong_to(:blue_team)
      should belong_to(:red_team)
      should belong_to(:winner)
      should belong_to(:tournament)
    end
  end
end
