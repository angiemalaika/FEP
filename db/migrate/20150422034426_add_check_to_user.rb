class AddCheckToUser < ActiveRecord::Migration
  def change
    add_column :users, :limit, :boolean
  end
end
