class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string  :name
      t.integer :amount
      t.string  :allergy
      t.datetime :expriation_date
      t.integer :count
      t.references  :doner
      t.references  :destination
      t.timestamps
    end
  end
end
