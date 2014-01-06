class UploadproductActivityship < ActiveRecord::Base
  attr_accessible :activity_id, :uploadproduct_id
  belongs_to :activity
  belongs_to :uploadproduct
end
