class CreateUploadproducts < ActiveRecord::Migration
  def change
    create_table :uploadproducts do |t|
        t.integer :uploadproduct_id
	t.string :title
        t.integer :cate
	t.string :condition
	t.text :discription
        t.string :atitle
        t.string :date
        t.string :time
        t.string :address
        t.string :phone
        t.text :adescription


	t.integer :whocheck
	t.integer :check


        t.references :user


      t.timestamps
    end
  end
end
