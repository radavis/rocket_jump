class Hyperlink < ActiveRecord::Base
  include Taggable

  validates_presence_of :url

  def self.seed_from_bookmarks
    Dir.glob('links/*.html') do |file|
      page = Nokogiri::HTML(open(file))
      links = page.css('a')

      links.each do |link|
        title = links.first.text
        url = link.attributes["href"].value
        Hyperlink.find_or_create_by(title: title, url: url)
      end
    end
  end
end
