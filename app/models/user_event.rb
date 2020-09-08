class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def event_name
    self.event.name 
  end

  def group
    self.event.group_id
  end

  # def find_user_events
  #   UserEvent.all.map{|instance|instance.user_id == @current_user.id}
  # end


end
