module ApplicationHelper
  def resource_name
    :user
  end

  def resource_class 
     User 
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def minimum_password_length
    @minimum_password_length = User.password_length.min
  end
end
