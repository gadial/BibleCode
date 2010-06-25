class CreateEls < ActiveRecord::Migration
  def self.up
    create_table :els do |t|
      t.string :word
      t.integer :distance
      t.integer :start
      t.integer :bib_text_id
      t.timestamps
    end
  end

  def self.down
    drop_table :els
  end
end
