require "rails_helper"

RSpec.describe User, type: :model do
  describe "#full_name" do
    it "returns the full name" do
      user = build(:user, first_name: "Tom", last_name: "Wolf")

      expect(user.full_name).to eq("Tom Wolf")
    end
  end
end
