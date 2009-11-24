class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :somethings, :thing_id, :integer
    add_index :somethings, [:thing_id]
  end

  def self.down
    remove_column :somethings, :thing_id
    remove_index :somethings, :name => :index_somethings_on_thing_id
  end
end
