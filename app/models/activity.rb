class Activity < ActiveRecord::Base
  attr_accessible :title, :date, :time, :address, :phone, :description
  has_many :uploadproduct_activityships 
  has_many :uploadproducts , :through => :uploadproduct_activityships

end
