class ProfileController < ApplicationController
  
  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params)
  end
end
