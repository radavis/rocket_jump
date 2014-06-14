class Question < ActiveRecord::Base
  include Taggable

  has_many :replies

  validates :title, presence: true
  validates :body, presence: true
end
