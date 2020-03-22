require 'rails_helper'

describe Profile do
  describe '#create' do

    it "is invalid without a birthday" do
      profile = build(:profile, birthday: "")
      profile.valid?
      expect(profile.errors[:birthday]).to include("can't be blank")
    end

    it "is invalid without a sex" do
      profile = build(:profile, sex: "")
      profile.valid?
      expect(profile.errors[:sex]).to include("can't be blank")
    end

    it "is invalid without a height" do
      profile = build(:profile, height: "")
      profile.valid?
      expect(profile.errors[:height]).to include("can't be blank")
    end

    it "is invalid without a weight" do
      profile = build(:profile, weight: "")
      profile.valid?
      expect(profile.errors[:weight]).to include("can't be blank")
    end
  end
end