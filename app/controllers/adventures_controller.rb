class AdventuresController < ApplicationController
  before_action :require_user

  def index
    redirect_to '/users/sign_in' unless user_signed_in?
    location = params[:location]
    @adventures = Adventure.where("user_id=#{current_user.id}")
  end

  def new
    redirect_to '/users/sign_in' unless user_signed_in?
  end

  def create
    redirect_to '/users/sign_in' unless user_signed_in?
    @user = User.find(current_user.id)
    if (!params[:location].empty?) && (!params[:num_people].empty?) && (!params[:num_day].empty?) && (!params[:plan].empty?)
      @location = params[:location]
      @num_people = params[:num_people]
      @num_day = params[:num_day]
      @plan = params[:plan]
      @adventure  = Adventure.new({location: @location, num_people: @num_people, num_day: @num_day, plan: @plan})
      @adventure.save
      redirect_to :action => 'search', :location => @location
    else
      redirect_to '/adventures/new'
    end
  end

  def search
    @user = User.find(current_user.id)
    location = params[:location]
    @adventures = Adventure.where("location LIKE ?","#{location}")

  end

end
