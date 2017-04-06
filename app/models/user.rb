class User < ApplicationRecord

  def self.from_omniauth(hash)
    User.find_or_create_by!(uid: hash.uid, provider: hash.provider) do |user|
      user.email        = hash.info.email
      user.name         = hash.info.name
      user.nickname     = hash.info.nickname
      user.location     = hash.extra.raw_info.location
      user.access_token = hash.credentials.token
    end
  end

end
