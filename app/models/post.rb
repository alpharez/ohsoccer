class Post < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user

  default_scope :order => 'posts.created_at DESC'

  validates :title, :presence => true
  validates :body, :presence => true
  validates :author, :presence => true
end
