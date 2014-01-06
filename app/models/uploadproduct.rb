class Uploadproduct < ActiveRecord::Base
  attr_accessible :title, :cate, :discription, :user_id, :pic, :pic_file_name, :pic_content_type, :pic_file_size, :pic_updated_at

  belongs_to :user
  has_many :accouts
  has_many :uploadproduct_activityships
  has_many :activities , :through => :uploadproduct_activityships
  has_attached_file :pic, :styles => 
        { :medium => "300x300>", :thumb => "100x100>" }

end
