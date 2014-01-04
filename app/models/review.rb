class Review < ActiveRecord::Base
  belongs_to :author
  attr_accessible :content, :title
end
