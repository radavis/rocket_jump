class ChangeQuestionBodyToText < ActiveRecord::Migration
  def change
    change_column :questions, :body, :text, null: false
  end
end
