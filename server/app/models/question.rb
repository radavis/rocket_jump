class Question < ActiveRecord::Base
  has_many :replies

  validates_presence_of :body
end
