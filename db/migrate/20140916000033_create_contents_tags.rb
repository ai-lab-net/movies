class CreateContentsTags < ActiveRecord::Migration
  def change
    create_table :contents_tags do |t|
      t.references :content, index: true, null: false
      t.references :tag, index: true, null: false
    end
    add_index :contents_tags, [:content_id, :tag_id], unique: true
  end
end
