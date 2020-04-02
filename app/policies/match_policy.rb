class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user1_id: user.id).or(Match.where(user2_id: user.id))
      # matches = Match.all
      # matches_td = []
      # matches.each do |match|
      # matches_td.push(match) if ( (match.user1_id == 52 && match.exchanged == false) || (match.user2_id == 52 && match.exchanged == false) )
# end
    end
  end

  def update?
    !user.nil? #if user is not nil, creates true
    record.user1_id == user.id || record.user2_id == user.id
  end
end
