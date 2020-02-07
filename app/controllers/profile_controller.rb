class ProfileController < ApplicationController
  
  def new
    @profile = Profile.new
  end

  def create
    Profile.create!(profile_params)
    redirect_to root_path
  end

  private
  def profile_params
    params.require(:profile).permit(:birthday, :sex, :height, :weight, :startWeight, :targetWeight, :activeLevel).merge(user_id: current_user.id)
  end
end
