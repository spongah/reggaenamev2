class CreateWords < ActiveRecord::Migration
  def up
    create_table :words do |t|
      t.string :word
      t.integer :position

      t.timestamps null: false
    end
  end
  def down
  	drop_table :words
  end
end
