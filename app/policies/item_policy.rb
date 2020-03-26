class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
  def create?
    !user.nil? #if user is not nil, creates true
  end
  def edit?
    record.user == user
  end
  def update?
    edit?
  end
  def destroy?
    edit? #if i want admin, this is the action only admin maybe can do
  end
  def potential_matches?
    !user.nil?
  end
  def new?
    create?
  end
end
