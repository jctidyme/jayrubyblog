ActiveAdmin.register Post do
permit_params :title, :body, :category_id, :admin_user_id, :admin_user, :byline
	menu :label => "Blog Posts"

	index do
    selectable_column
    id_column
    column :title
    column "Author", :admin_user
    column :category
    column :created_at
    actions
  end

  form do |f|
    f.inputs "New Post" do
      f.input :title
      f.input :byline
      f.input :body
      f.input :category
      f.input :admin_user
    end
    f.actions
  end


end
