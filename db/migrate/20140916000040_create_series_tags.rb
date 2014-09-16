class CreateSeriesTags < ActiveRecord::Migration
  def change
    create_table :series_tags, id: false do |t|
      t.references :series, index: true, null: false
      t.references :tag, index: true, null: false
    end
    add_index :series_tags, [:series_id, :tag_id], unique: true
  end
end
