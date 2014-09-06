class ChangeDatatypeTableFromStringToText < ActiveRecord::Migration
  def up
    change_column :items, :description, :text, :limit => nil
  end

  def down
    change_column :items, :description, :string
  end
end
