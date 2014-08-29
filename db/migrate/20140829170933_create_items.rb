class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :image
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
