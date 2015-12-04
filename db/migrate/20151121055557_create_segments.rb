class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.integer :party_id, null: false
      t.integer :smid_id, null: false
      t.integer :smid_unit_id, null: false
      t.string :segment_code, null: false, limit: 30
      t.integer :segn_code, null: false
      t.integer :segn_type, null: false
      t.integer :segn_sequence_nbr, null: false

      t.timestamps
    end
    add_index :segments, [:party_id]
    add_index :segments, [:smid_id, :smid_unit_id]
  end
end
