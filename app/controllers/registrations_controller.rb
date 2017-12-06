class RegistrationsController < Devise::RegistrationsController

  def create
    super do
      User.create(registration_id: resource.id, first_name: "No_first_name", last_name: "No_last_name", photo: "http://lorempixel.com/400/200/" )
    end
  end

  protected

  def after_sign_up_path_for(resource)
    edit_users_path(resource.user)
  end

end
