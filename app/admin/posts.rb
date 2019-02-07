ActiveAdmin.register Post do

	permit_params :title, :content, :avatar, :published_at, :user_id 

    action_item :publish, only: :show do
    	link_to "Publish", publish_admin_post_path(post)
    end	


	member_action :publish, method: :put do
     post = Post.find(params[:id])
     redirect_to admin_post_path(post) 
    end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
