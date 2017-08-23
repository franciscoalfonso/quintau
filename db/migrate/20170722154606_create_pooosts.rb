class CreatePooosts < ActiveRecord::Migration[5.1]
  def change
    create_table :pooosts do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
