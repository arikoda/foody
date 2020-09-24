class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string  :name              , null: false
      t.integer :amount            , null: false
      t.datetime :expriation_date  , null: false
      t.integer :count             , null: false
      t.integer  :category_id
      t.string  :allergy_id
      t.references  :doner
      t.references  :destination
      t.timestamps
    end
  end
end
