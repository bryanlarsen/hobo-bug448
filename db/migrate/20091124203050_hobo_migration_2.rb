class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :things do |t|
      t.decimal  :price
      t.boolean  :is_active
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :things, [:category_id]
  end

  def self.down
    drop_table :categories
    drop_table :things
  end
end
