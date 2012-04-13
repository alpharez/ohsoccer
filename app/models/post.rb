class Post < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user

  default_scope :order => 'posts.created_at DESC'
end
