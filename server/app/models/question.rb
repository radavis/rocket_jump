class Question < ActiveRecord::Base
  include Taggable

  has_many :replies

  validates_presence_of :body
end
