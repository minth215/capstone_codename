class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.integer :playtime
      t.text :description
      t.timestamps null: false
    end
  end
end
