class Uploadproduct < ActiveRecord::Base
  attr_accessible :title, :cate, :discription, :user_id, :pic, :pic_file_name, :pic_content_type, :pic_file_size, :pic_updated_at
  validates_presence_of :title, :discription
  belongs_to :user
  has_attached_file :pic, :styles => 
        { :medium => "300x300>", :thumb => "100x100>" }

end
