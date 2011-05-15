class CreateKnotens < ActiveRecord::Migration
  def self.up
    create_table :knotens do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :knotens
  end
end
