require 'csv'

class QuestionSeeder
  def initialize(file_path)
    @file_path = file_path
  end

  def seed!
    CSV.foreach(@file_path, headers: true, header_converters: :symbol) do |row|
      Question.find_or_create_by!(body: row.fields.join(' '))
    end
  end
end
