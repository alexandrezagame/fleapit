class MatchesController < ApplicationController
  def index
    @matches = policy_scope(Match).order(created_at: :desc)
    # @matches = Match.where(user1_id: user.id).or(Match.where(user2_id: user.id))
    # matches variable = finding match where i am user 1 or user 2, merging two results.

    #display matches where one of the users is me
  end
end
