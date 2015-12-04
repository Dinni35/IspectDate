class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyword, limit: 150
      t.integer :segment_id
      t.integer :smid_id
      t.integer :smid_unit_id

      t.timestamps
    end
    add_index :keywords, [:segment_id], :name => "index_keywords_on_segment_id"
  end
   
end
