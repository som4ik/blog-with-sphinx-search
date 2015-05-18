class Comment < ActiveRecord::Base
	has_ancestry
	belongs_to :commentable, :polymorphic => true
	has_and_belongs_to_many :categories
	validates :content ,presence: :true
	validates :commenter , presence: :true
	belongs_to :user
end
