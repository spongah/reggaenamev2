class CreateBandnames < ActiveRecord::Migration
  def change
    create_table :bandnames do |t|
      t.string :bandname
      t.integer :likes
      t.integer :dislikes

      t.timestamps null: false
    end
  end
end
