class PostBlog < ApplicationRecord
  belongs_to :user
  attachment :image 
end
