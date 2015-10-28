module NotificationsHelper
  def delete_friendship_path sender_user_id
    @friendship = Friendship.where("user_id=#{sender_user_id} AND friend_id=#{current_user.id}")
    return "/friends/#{@friendship[0].id}"
  end
end
