class CreateActorImages < ActiveRecord::Migration
  def change
    create_table :actor_images do |t|
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
