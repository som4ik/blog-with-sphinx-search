ThinkingSphinx::Index.define :post, :with => :active_record do
   indexes title, :sortable => true
   indexes body
   indexes user.id,       :as => :user,     :sortable => true
  	 # has confirm,:type => :boolean
  	 # has created_at


  
end