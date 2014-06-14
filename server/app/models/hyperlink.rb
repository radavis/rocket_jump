class Hyperlink < ActiveRecord::Base
  include Taggable

  validates_presence_of :url
end
