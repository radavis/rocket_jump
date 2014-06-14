class CreateHyperlinks < ActiveRecord::Migration
  def change
    create_table :hyperlinks do |t|
      t.string :url, null: false
      t.text :body

      t.timestamps
    end
  end
end
