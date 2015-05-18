ActiveAdmin.register_page "Dashboard" do

  menu priority: 1

  content title: proc{ I18n.t("active_admin.dashboard") } do
    today = Date.today +1
    strong "We do have "
    strong "Posts"
    table do
      thead do
        tr do
          th 'All Posts count'
          th 'All Users count'
          th 'All Users registered today'
        end
      end
    tbody do
      tr do
        th Post.count
        th User.count
        th User.where("created_at >=?",1.day.ago).count
      end
    end
    end
  end 
end 