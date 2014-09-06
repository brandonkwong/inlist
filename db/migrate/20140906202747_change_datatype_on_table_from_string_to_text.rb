class ChangeDatatypeOnTableFromStringToText < ActiveRecord::Migration
  def up
    change_column :items, :image, :text, :limit => nil
  end
  def down
    change_column :items, :image, :string
  end
end
