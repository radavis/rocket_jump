class ChangeUrlTypeToText < ActiveRecord::Migration
  def up
    change_column :hyperlinks, :url, :text, null: false
  end

  def down
    change_column :hyperlinks, :url, :string, null: false
  end
end
