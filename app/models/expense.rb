class Expense < ActiveRecord::Base
  attr_accessible :amount, :company, :date_payment, :description,
                  :ongoing, :payment_type, :title, :type
  set_inheritance_column 'something_you_will_not_use'

  validates_presence_of :amount, :company, :date_payment, :description,
                        :payment_type, :title, :type

  def tax
    amount * 0.21
  end

  def type_output
    if type == 1
      "Blue Robin"
    elsif type == 2
      "Start-Up Iceflag"
    elsif type == 3
      "Investment Iceflag"
    elsif type == 4
      "Other"
    end
  end

  def payment_type_output
    if payment_type == 1
      "CreditCard Dirk"
    elsif payment_type == 2
      "Onine Banking Dirk"
    elsif payment_type == 3
      "Online Banking Andy"
    elsif payment_type == 4
      "Other"
    end
  end
end
