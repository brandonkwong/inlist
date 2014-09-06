class ChangeDatatypeOnTableFromStringToText < ActiveRecord::Migration
  def up
    change_column :items, :url, :text, :limit => nil
  end

  def down
    change_column :items, :url, :string
  end
end
