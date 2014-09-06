class ChangeDatatypeTableFromStringToText < ActiveRecord::Migration
  def up
    change_column :items, :description, :text, :limit => nil
  end

  def down
    change_column :items, :description, :string
  end
  def up
    change_column :url, :description, :text, :limit => nil
  end

  def down
    change_column :url, :description, :string
  end
end
