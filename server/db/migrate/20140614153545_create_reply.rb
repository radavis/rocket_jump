class CreateReply < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :body, null: false

      t.timestamps
    end
  end
end
