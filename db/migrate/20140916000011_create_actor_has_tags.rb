class CreateActorHasTags < ActiveRecord::Migration
  def change
    create_table :actor_has_tags do |t|
      t.references :actor, index: true, null: false
      t.references :tag, index: true, null: false

      t.timestamps
    end
  end
end
