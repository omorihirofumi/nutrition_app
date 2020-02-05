class AdduserIdTobalancesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :user_id, :integer,foreign_key: true
    add_column :balancesheets, :user_id, :integer,foreign_key: true
  end
end
