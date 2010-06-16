class CreateDads < ActiveRecord::Migration
  def self.up
    create_table :dads do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :dads
  end
end
