ThinkingSphinx::Index.define :post, :with => :real_time do
   indexes title, :sortable => true
   indexes body, cached_tag_list
    indexes user.id,       :as => :user,     :sortable => true
  	 # has confirm,:type => :boolean
  	 # has created_at


  
end