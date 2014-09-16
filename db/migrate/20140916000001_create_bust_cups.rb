class CreateBustCups < ActiveRecord::Migration
  def change
    create_table :bust_cups do |t|
      t.string :cup, index: true, null: false
    end
  end
end
