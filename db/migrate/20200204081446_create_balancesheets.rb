class CreateBalancesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :balancesheets do |t|
      t.string :ingredient, null:false
      t.float :protein
      t.float :carbo
      t.float :fat
      t.timestamps
    end
  end
end
