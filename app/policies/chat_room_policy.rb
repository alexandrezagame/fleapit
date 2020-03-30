class ChatRoomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end

  def create?
    !user.nil? #if user is not nil, creates true
  end
end
