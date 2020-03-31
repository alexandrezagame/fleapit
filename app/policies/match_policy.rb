class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user1_id: user.id).or(Match.where(user2_id: user.id))
    end
  end
end
