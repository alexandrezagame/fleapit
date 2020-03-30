class MatchesController < ApplicationController
  def index
    @matches = Match.all
    # join(:items).where(user_id: current_user.id) NEEDS WORK
  end
end
