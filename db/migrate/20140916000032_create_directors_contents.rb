class CreateDirectorsContents < ActiveRecord::Migration
  def change
    create_table :directors_contents, id: false do |t|
      t.references :director, index: true, null: false
      t.references :content, index: true, null: false
    end
    add_index :directors_contents, [:director_id, :content_id], unique: true
  end
end
