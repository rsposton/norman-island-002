class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string "name"
      t.permalink "string"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
