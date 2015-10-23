class FriendsController < ApplicationController
  def index
    if params[:search] != nil
      @users = User.search(params[:search])
      @no_user = 0
      if @users.empty?
        @no_user = 1
      end
    else
      @users = current_user.friendships
      if !@users.empty?
        @no_user = 0
        @users = @friends.friend_id
      else
        @no_user = 2
      end
    end
  end

  def create
    redirect_to '/users/sign_in' unless user_signed_in?
    @friendship = Friendship.new({user_id: current_user.id, friend_id: friend_params.to_i, status: 2})
    @friendship.save
    redirect_to :back
  end

  def update
    @friendship = Friendship.where("user_id=#{params[:sender_user_id]} AND friend_id=#{params[:receiver_user_id]}")
    if params[:status] == 0
      if @friendship.empty?
	redirect_to '/friends' 
      else
        redirect_to '/friends/#{@friendship.id}', method: :delete
      end
    else
      redirect_to '/friends' unless !@friendship.empty?    #should exist a notification site
      @friendship.status = 1
      @friendship.save    #should exist cases to deal with error
      @reverse_f = Friendship.new({user_id: params[:receiver_user_id], friend_id: params[:sender_user_id], status: 1})
      @reverse_f.save    #should exist cases to deal with error
      redirect_to '/friends'
    end
  end

  def destroy
    Friendship.destroy[:id]
    redirect_to '/friends'
  end

private
  def friend_params
    params.require(:friend)
  end
end
