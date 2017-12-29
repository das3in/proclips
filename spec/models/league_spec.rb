require "rails_helper"

describe League do
  context "associations" do
    it "should have valid associations" do
      should have_many(:teams)
    end
  end
end
