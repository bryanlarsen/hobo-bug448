class HoboMigration4 < ActiveRecord::Migration
  def self.up
    create_table :somethings do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :thing_patterns do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :things, :thing_pattern_id, :integer
    add_index :things, [:thing_pattern_id]
  end

  def self.down
    remove_column :things, :thing_pattern_id
    remove_index :things, :name => :index_things_on_thing_pattern_id

    drop_table :somethings
    drop_table :thing_patterns
  end
end
