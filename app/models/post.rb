class Post < ActiveRecord::Base
  attr_accessible :body, :dropbox_location, :poster, :title
  has_many :comments, :dependent => :destroy
end
