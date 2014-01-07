class Uploadproduct < ActiveRecord::Base
  attr_accessible :title, :cate, :discription, :condition, :user_id, :pic, :pic_file_name, :pic_content_type, :pic_file_size, :pic_updated_at, :atitle, :date, :time, :address, :phone, :adescription

  belongs_to :user
  belongs_to :accout
  has_attached_file :pic, :styles => 
        { :medium => "300x300>", :thumb => "100x100>" }

end
