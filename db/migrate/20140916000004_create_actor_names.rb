class CreateActorNames < ActiveRecord::Migration
  def change
    create_table :actor_names do |t|
      t.references :actor, index: true
      t.string :name, null: false
      t.string :name_kana, null: false

      t.timestamps
    end
  end
end
