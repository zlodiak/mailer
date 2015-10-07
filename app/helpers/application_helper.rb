module ApplicationHelper
  def sends_count(user_id)
    Send.where(user_id: user_id).count
  end
end
