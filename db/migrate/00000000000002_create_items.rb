class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps
      t.datetime :occurs_at
      t.string :title
      t.string :description, :limit => 4096
      t.string :room
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.decimal :lat, :precision => 16, :scale => 14
      t.decimal :lng, :precision => 17, :scale => 14
    end

    add_index :items, :occurs_at
    add_index :items, :lat
    add_index :items, :lng
  end
end
