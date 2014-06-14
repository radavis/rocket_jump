class AddTitleToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :title, :string, null: false
  end
end
