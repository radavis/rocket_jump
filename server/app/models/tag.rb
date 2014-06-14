class Tag < ActiveRecord::Base
  has_many :taggings

  has_many :questions, through: :taggings, source: :taggable, source_type: Question
  has_many :hyperlinks, through: :taggings, source: :taggable, source_type: Hyperlink

  validates_presence_of :name
end
