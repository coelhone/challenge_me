class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def solutions
    @challenges_solutions = UserChallengeSolution.where(:user_id => params[:id]).all
  end
end
