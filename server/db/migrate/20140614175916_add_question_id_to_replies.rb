class AddQuestionIdToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :question_id, :integer, null: false
  end
end
