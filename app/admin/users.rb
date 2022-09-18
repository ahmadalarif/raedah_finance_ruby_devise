ActiveAdmin.register User do 

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :mobile_number, :gender, :upload_cv
  #
  # or
  #
  
  permit_params do
    permitted = [:username, :name,:email,:mobile_number, :gender, :upload_cv, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at,  ]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  

  ActiveAdmin.setup do |config|
    config.default_per_page = 5
  end
  
  index do
    selectable_column
    column :username 
    column :name 
    column :email 
    column :mobile_number 
    column :gender
    column :upload_cv
    link
    column :encrypted_password 
    actions
  end
  filter :gender
  
end
