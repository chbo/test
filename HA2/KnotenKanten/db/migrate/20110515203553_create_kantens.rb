class CreateKantens < ActiveRecord::Migration
  def self.up
    create_table :kantens do |t|
      t.integer :knoten1_id
      t.integer :knoten2_id
      t.integer :kantenlaenge

      t.timestamps
    end
  end

  def self.down
    drop_table :kantens
  end
end
