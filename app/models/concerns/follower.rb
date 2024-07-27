module Follower
  extend ActiveSupport::Concern
  include Lister

  FOLLOW_SCOPE = :follow

  def follow(object)
    list(object, FOLLOW_SCOPE)
  end

  def unfollow(object)
    delist(object, FOLLOW_SCOPE)
  end

  def following?(object)
    listed?(object, FOLLOW_SCOPE)
  end
end
