class ChangeDatatypeOnTableFromStringToText < ActiveRecord::Migration
  def up
<<<<<<< HEAD
    change_column :items, :image, :text, :limit => nil
  end

  def down
    change_column :items, :image, :string
=======
    change_column :items, :url, :text, :limit => nil
  end

  def down
    change_column :items, :url, :string
>>>>>>> master
  end
end
