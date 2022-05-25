class ChangeDataTypeForPrice < ActiveRecord::Migration[6.1]
  def change
    change_table :items do |t|
      t.change :price, :integer
    end
  end
end
