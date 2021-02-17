module UsersHelper

  def my_user_event
    @event = Event.all
    @my_event = @user.events
  end
end
