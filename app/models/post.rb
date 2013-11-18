class Post < ActiveRecord::Base
	attr_accessible :name, :body
	validates :name, presence: true
	validates :body, presence: true
  
  belongs_to :category
end