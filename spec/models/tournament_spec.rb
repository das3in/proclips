require "rails_helper"

describe Tournament do
  context "associations" do
    it "should have valid associations" do
      should have_many(:matches)
    end
  end
end
