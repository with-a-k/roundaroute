class User < ActiveRecord::Base
  has_many :routes
  
  def self.find_or_create_from_oauth(data)
    if user = find_by(uid: data.extra.raw_info.id_str)
      user
    else
      create({
        name: data.extra.raw_info.screen_name,
        uid: data.extra.raw_info.id_str,
        token: data.token,
        secret: data.secret
        })
    end
  end
end
