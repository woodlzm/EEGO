class GroupsController < ApplicationController
  before_action :require_user

  def index
    @group_entries = Group.where("user_id=#{current_user.id}")
    @groups_names = []
    @group_entries.each do |g|
      @groups_names.push(g.name)
    end
  end

  def new
    @friendships = current_user.friendships
    @friends = []
    @friendships.each do |f|
      @friends.push User.find(f.friend_id) if f.status == 1
    end
  end

  def create
    group_name = params[:group_name]
    @my_entry = Group.new({name: group_name, user_id: current_user.id})
    @my_entry.save
    params.each do |id, v|
      if v == "1"
        @group_entry = Group.new({name: group_name, user_id: id.to_i})
        @group_entry.save
      end
    end
    redirect_to '/groups'
  end
end
