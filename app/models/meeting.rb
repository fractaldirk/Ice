class Meeting < ActiveRecord::Base
  attr_accessible :agenda, :attendents, :content, :meeting_date, :place, :title
  def display_meeting
    meeting_date - DateTime.now
  end
end
