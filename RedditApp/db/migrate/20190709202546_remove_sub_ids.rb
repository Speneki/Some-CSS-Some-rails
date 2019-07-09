class RemoveSubIds < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :sub_ids
  end
end
