class CreateActorsTags < ActiveRecord::Migration
  def change
    create_table :actors_tags, id: false do |t|
      t.references :actor, index: true, null: false
      t.references :tag, index: true, null: false
    end
    add_index :actors_tags, [:actor_id, :tag_id], unique: true
  end
end
