class CreateBibTexts < ActiveRecord::Migration
  def self.up
    create_table :bib_texts do |t|
      t.string :title
      t.text :source, :limit => 16777216
      t.text :main, :limit => 16777216

      t.timestamps
    end
  end

  def self.down
    drop_table :bib_texts
  end
end
