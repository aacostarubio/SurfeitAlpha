class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :username

  has_secure_password

  validates_presence_of :name, :email, :username

  validates_uniqueness_of :email, :username


end
