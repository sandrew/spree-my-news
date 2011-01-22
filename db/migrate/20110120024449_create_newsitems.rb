class CreateNewsitems < ActiveRecord::Migration
  def self.up
    create_table :newsitems do |t|
      t.string :name
      t.string :description
      t.string :permalink
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :newsitems
  end
end
