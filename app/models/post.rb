class Post < ActiveRecord::Base
  attr_accessible :body, :dropbox_location, :poster, :title, :sort
  has_many :comments, :dependent => :destroy
end
