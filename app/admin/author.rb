ActiveAdmin.register Author do
  index do                            
    column :email                     
    column :name
    column :provider
    column :created_at      
    column :last_sign_in_at
    column :current_sign_in_ip           
    default_actions                   
  end

end
