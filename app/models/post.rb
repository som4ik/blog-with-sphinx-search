class Post < ActiveRecord::Base
has_many :comments, :as => :commentable, :dependent => :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
has_and_belongs_to_many :categories
scope :confirmed, -> {where(:confirm => true)}
scope :ignored , -> {where(:ignore => true)}
scope :pending , -> {where(:confirm => false).where(:ignore => false)}
end