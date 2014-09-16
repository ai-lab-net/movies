class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name, index: true, null: false
      t.string :name_kana, index: true, null: false

      t.timestamps
    end
  end
end
