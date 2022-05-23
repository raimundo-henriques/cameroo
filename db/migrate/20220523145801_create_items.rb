class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :available, null: false, default: true
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
