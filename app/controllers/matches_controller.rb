class MatchesController < ApplicationController
  def index
    @matches = policy_scope(Match).order(created_at: :desc)
    # @matches = policy_scope
    # @matches = Match.where(user1_id: user.id).or(Match.where(user2_id: user.id))
    # matches variable = finding match where i am user 1 or user 2, merging two results.
    #display matches where one of the users is me

    # matches_td = []
    # matches.each do |match|
      # matches_td.push(match) if ( (match.user1_id == 52 && match.exchanged == false) || (match.user2_id == 52 && match.exchanged == false) )
    # end
    # @matches = matches
  end


  def update
    @match = Match.find(params[:match_id])
    authorize @match
    @match.exchanged = true
    @match.save!
    if @match.item.user.id == current_user.id
      @matches = Match.where(item_id: @match.item.id).or(Match.where(other_item_id: @match.item.id)).destroy_all
    else
      @matches = Match.where(item_id: @match.other_item.id).or(Match.where(other_item_id: @match.other_item.id)).destroy_all
    end
      redirect_to matches_path
  end
end
