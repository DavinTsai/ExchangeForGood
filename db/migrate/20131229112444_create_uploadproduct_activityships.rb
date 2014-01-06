class CreateUploadproductActivityships < ActiveRecord::Migration
  def change
    create_table :uploadproduct_activityships do |t|
      t.integer :uploadproduct_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
