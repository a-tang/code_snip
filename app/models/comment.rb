class Comment < ActiveRecord::Base
  belongs_to :code
  validates :body, presence: true
end
