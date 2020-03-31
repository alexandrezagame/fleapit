class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: []
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, except: :home
  def index
    @items = policy_scope(Item).order(created_at: :desc) #pundit
  end

  def potential_matches #showing potential matches from member routes
    # @items = Item.where.not(user: current_user)
    @my_item = Item.find(params[:id])
    @items = Item.where.not(user: current_user).where.not(id: @my_item.find_voted_items)
    authorize @items #pundit
  end

  def like
    @wanted_item = Item.find(params[:item_id])
    @my_item = Item.find(params[:my_item])
    @wanted_item.liked_by @my_item
    # @wanted_item.vote_registered? #nest in if statement, check documentation
    # Step 1: Save wanted item
    # @wanted_item.save
    # Step 2: Check if my item was liked
    if @wanted_item.liked? @my_item
      @match = Match.new()
    # Step 3: If so, create new match
    # Step 4: Store my_item.id and wanted_item.id as item_id and other_item_id
      @match.item = @my_item
      @match.user1 = @my_item.user
      @match.user2 = @wanted_item.user
      #defining matches
      @match.other_item = @wanted_item
      @match.matched_date = Time.now
    # Step 5: Save match
      @match.save!
        #popup notification ITS A MATCH (clickable -> to matches view index)
        #trigger modal if @match.exist
    end
      respond_to do |format|
        format.html { redirect_to potential_matches_item_path(@my_item), alert: "LIKE" }
        format.js
      end
  end

  def dislike
    @not_wanted_item = Item.find(params[:item_id])
    @my_item = Item.find(params[:my_item])
    @not_wanted_item.disliked_by @my_item
    # @not_wanted_item.vote_registered? #check if u need line
    # @not_wanted_item.save
    respond_to do |format|
      format.html { redirect_to potential_matches_item_path(@my_item), alert: "DISLIKE" }
      format.js
    end
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    authorize @item #pundit
    if @item.save!
      redirect_to items_path, notice: "Item added"
    else
      render :new
    end
  end

  def update
    @item = Item.find(params[:id])
    authorize @item #pundit
    if @item.update(item_params)
      redirect_to items_path, notice: "Item updated"
    else
      render :edit
    end
  end

  def edit
    @item = Item.find(params[:id])
    authorize @item #pundit
  end

  def new
    @item = Item.new
    authorize @item
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item #pundit
    @item.destroy
    redirect_to items_path, notice: "Item destroyed"
  end

  private
  # def set_item
  #   @item = Item.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(:name, :description, :brand, :min_price, :max_price, pictures: [])
  end
end
