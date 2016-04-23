class Snip < ActiveRecord::Base
  validates :title, presence: true
  validates :code, presence: true
  has_many :comments
end
