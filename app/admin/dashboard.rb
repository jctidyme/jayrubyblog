ActiveAdmin.register_page "Dashboard" do
  menu priority: 1
    content title: proc { I18n.t("active_admin.dashboard") } do
        columns do
            column do
                panel "Categories" do
                    table_for Category.order("id desc") do 
                        column("ID") { |category| category.id }
                        column("Name") { |category| link_to(category.name, admin_category_path(category)) }
                        column("Number of Posts") { |category| link_to(category.posts.count,"posts?utf8=✓&q%5Bcategory_id_eq%5D=#{category.id}&commit=Filter&order=id_desc") }
                        column("Created At")   { |category| category.created_at}
                    end
                end
            end
        

            column do
                panel "Recent Posts" do
                    table_for Post.order("id desc").limit(Category.count) do
                        column("ID") { |post| post.id }
                        column("Name") { |post| link_to(post.title, admin_post_path(post)) }
                        column("Author") { |post| post.admin_user.name}
                        column("Created At")   { |post| post.created_at}
                    end
                end
            end 
        end #end columns






    end
end
