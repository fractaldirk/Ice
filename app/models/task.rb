class Task < ActiveRecord::Base
  attr_accessible :by_whom, :description, :dropbox_location, :due_date, :status, :title

  def by_whom_output
    if by_whom == 1
      "Chef"
    elsif by_whom == 2
      "Chef Walnoot"
    elsif by_whom == 3
      "Free"
    elsif by_whom == 4
      "Pep"
    end
  end

  def status_output
    if status == 1
      "Untouched"
    elsif status == 2
      "In progress"
    elsif status == 3
      "Completed"
    end
  end
end
