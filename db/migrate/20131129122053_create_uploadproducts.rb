class CreateUploadproducts < ActiveRecord::Migration
  def change
    create_table :uploadproducts do |t|
        t.integer :uploadproduct_id
	t.string :title
	
        t.integer :cate
	t.boolean :condition
	t.text :discription
	t.boolean :thingstodo

        t.references :user
        t.references :activity
        t.references :uploadproduct_activityship

      t.timestamps
    end
  end
end
