class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :birthday, null:false
      t.string :sex,  null:false
      t.float :height,  null:false
      t.float :weight,  null:false
      t.float :startWeight
      t.float :targetWeight
      t.string :activeLevel
      t.timestamps
    end
  end
end
