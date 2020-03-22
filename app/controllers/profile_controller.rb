class ProfileController < ApplicationController
  
  def new
    @profile = Profile.new
  end

  def create
    Profile.create!(profile_params)
    redirect_to '/home/new'
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    Profile.update(profile_params)
    redirect_to '/home/new'
  end

  private
  def profile_params
    params.require(:profile).permit(:birthday, :sex, :height, :weight, :startWeight, :targetWeight, :activeLevel).merge(user_id: current_user.id)
  end
end
