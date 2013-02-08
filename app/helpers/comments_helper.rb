module CommentsHelper
  def activity_description
    "#{current_user.user_name} commented the following on #{@post.title}:"
  end
  def wall_activity_description
    "#{current_user.user_name} shared the following on #{@post.title}:"
  end
end
