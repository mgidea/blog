class Posting < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates_presence_of :story
  validates_presence_of :subject
end

