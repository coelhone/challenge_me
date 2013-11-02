class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def solutions
    @solutions = Solution.where(:user_id => params[:id]).all
  end

  def challenges
    @challenges = Challenge.where(:user_id => params[:id]).all
  end
end
