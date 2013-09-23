class Comment < ActiveRecord::Base
  belongs_to :posting
  belongs_to :user

  validates_presence_of :body
  validates_presence_of :user
  validates_presence_of :posting

end
