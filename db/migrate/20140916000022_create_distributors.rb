class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name, index: true, null: false
      t.string :name_kana, index: true, null: false

      t.timestamps
    end
  end
end
