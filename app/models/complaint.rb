class Complaint < ActiveRecord::Base
  attr_accessible :content, :title, :author_id
  belongs_to :author
  
end
