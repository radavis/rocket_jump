class Question < ActiveRecord::Base
  include Taggable

  has_many :replies

  validates :title, presence: true
  validates :body, presence: true

  def self.search(query)
    if query.present?
      where("title ilike :q or body ilike :q", q: "%#{query}%")
    else
      all
    end
  end
end
