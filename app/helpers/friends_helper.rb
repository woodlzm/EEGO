module FriendsHelper
  def is_friend? user
    !Friendship.where("user_id=#{current_user.id} AND friend_id=#{user.id} AND status=1").empty?
  end

  def is_pending_request? user
    !Friendship.where("user_id=#{current_user.id} AND friend_id=#{user.id} AND status=2").empty?
  end
end
