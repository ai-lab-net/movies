class CreateContentsDirectors < ActiveRecord::Migration
  def change
    create_table :contents_directors, id: false do |t|
      t.references :director, index: true, null: false
      t.references :content, index: true, null: false
    end
    add_index :contents_directors, [:director_id, :content_id], unique: true
  end
end
