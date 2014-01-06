class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :activity_id
      t.string :title
      t.string :date
      t.string :time
      t.string :address
      t.string :phone
      t.text :description
	
      t.references :uploadproduct

      t.timestamps
    end
  end
end
