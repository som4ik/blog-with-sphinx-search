ThinkingSphinx::Index.define :post, :with => :real_time do
   indexes :title, :sortable => true
   indexes body
   has user.id, :type=>:integer,     :as => :user,     :sortable => true
   
   has :created_at,:type => :timestamp
   has :confirm,:type => :boolean

  # where "confirm = '1'"
end