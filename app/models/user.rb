class User < ActiveRecord::Base
  has_many :comments
  has_many :postings

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :password
  validates :password, :presence, confirmation: true
  validates_presence_of :email
  validates_presence_of :password_confirmation
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
end
