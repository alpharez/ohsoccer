class User < ActiveRecord::Base
  #attr_accessible :name, :email, :password, :password_confirmation, :admin
  has_secure_password

  has_many :posts
  has_many :assignments
  has_many :roles, :through => :assignments
  belongs_to :team

  validates :name, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, :format => { :with => VALID_EMAIL_REGEX }, :uniqueness => { :case_sensitive => false }
  validates :password, :length => { :minimum => 6 }
  validates :password_confirmation, :presence => true

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

end
