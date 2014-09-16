class CreateActorProfiles < ActiveRecord::Migration
  def change
    create_table :actor_profiles do |t|
      t.references :actor, index: true, null: false
      t.boolean :gender, default: false, null: false
      t.date :birth_date
      t.float :height, index: true
      t.float :weight, index: true
      t.references :bust_cup, index: true
      t.float :bust, index: true
      t.float :waist
      t.float :hip
      t.references :actor_image, index: true

      t.timestamps
    end
  end
end
