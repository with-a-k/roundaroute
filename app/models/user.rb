class User < ActiveRecord::Base
  def self.find_or_create_from_oauth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)

    user.name = data.info[:name]

    user
  end
end
