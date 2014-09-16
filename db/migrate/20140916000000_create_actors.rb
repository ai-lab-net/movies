class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.float :score, index: true

      t.timestamps
    end
  end
end
