class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :title, index: true, null: false
      t.text :title_kana, index: true, null: false
      t.references :series, index: true, null: false
      t.references :publisher, index: true, null: false
      t.references :distributor, index: true, null: false

      t.timestamps
    end
  end
end
