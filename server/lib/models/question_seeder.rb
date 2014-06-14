require 'csv'

class QuestionSeeder
  def initialize(file_path)
    @file_path = file_path
  end

  def seed!
    CSV.foreach(@file_path, headers: true, header_converters: :symbol) do |row|
      title = row[:subject]
      body = [:description, :searched, :problem].map { |attr| row[attr] }.join(' ')

      puts "Creating Question \"#{title}\""

      Question.find_or_create_by!(title: title, body: body)
    end
  end
end
