ActiveAdmin.register Post do
	actions :all, except: [:edit]
scope :confirmed
scope :ignored
scope :pending 
index do 

    selectable_column
    id_column
    column :title
    column :description
    column :confirm
    column :ignore
    column :created_at
    actions defaults: true do |post| 
    	link_to("Confirm", confirm_post_path(post)) +" "+ 
   		link_to('Ignore' , ignore_post_path(post))
    end

end


end
