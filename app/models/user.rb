class User < ActiveRecord::Base
  has_many :shouts
  validates :email, :presence => true, :length => { :minimum => 3}
  validates :email, :uniqueness => true, :on => :create
  validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, :message => "Email address not valid." }
  validates :first_name, :uniqueness => true
end
