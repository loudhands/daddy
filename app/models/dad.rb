class Dad < ActiveRecord::Base
  validates_presence_of :name
  
  has_attached_file :photo
end
