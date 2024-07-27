module Followable
  extend ActiveSupport::Concern
  include Listable

  def followers
    listers(Follower::FOLLOW_SCOPE)
  end
end
