class RemoveCreatedAtFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :created_at, :date
  end
end
