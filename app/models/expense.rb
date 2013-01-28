class Expense < ActiveRecord::Base
  attr_accessible :amount, :company, :date_payment, :description,
                  :ongoing, :payment_type, :title, :type
  set_inheritance_column 'something_you_will_not_use'
end
