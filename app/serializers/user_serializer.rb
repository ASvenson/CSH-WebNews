class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :display_name, :created_at, :is_admin

  def is_admin
    object.admin?
  end
end
