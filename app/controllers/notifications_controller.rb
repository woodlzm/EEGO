class NotificationsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @notifications = @user.notifications
  end

  def create
    @notification = Notification.create(:sender_user_id => notification_params[:sender_user_id], :message => User.find(notification_params[:userid]).email + " want to add you as a friend", :user_id => notification_params[:receiver_user_id] )
    @notification.save

  end

  private
  def notification_params
    params.require(:notification)
  end
end
