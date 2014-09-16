class CreateActorsContents < ActiveRecord::Migration
  def change
    create_table :actors_contents, id: false do |t|
      t.references :actor, index: true, null: false
      t.references :content, index: true, null: false
    end
    add_index :actors_contents, [:actor_id, :content_id], unique: true
  end
end
