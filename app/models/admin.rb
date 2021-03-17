class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :timeoutable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist, authentication_keys: [:username]

  self.skip_session_storage = [:http_auth, :params_auth]
end
