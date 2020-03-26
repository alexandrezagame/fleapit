class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: []
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, except: :home
  def index
    @items = policy_scope(Item).order(created_at: :desc) #pundit
  end

  def potential_matches #showing potential matches from member routes

    @items = Item.where.not(user: current_user)

    authorize @items #pundit
    @my_item = Item.find(params[:id])
  end

  def like
    @wanted_item = Item.find(params[:item_id])
    @my_item = Item.find(params[:my_item])
    redirect_to potential_matches_item_path(@my_item), alert: "LIKE"
  end

  def dislike
    @not_wanted_item = Item.find(params[:item_id])
    @my_item = Item.find(params[:my_item])
    redirect_to potential_matches_item_path(@my_item), alert: "DISLIKE"
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

  # private

  # def set_item
  #   @item = Item.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(:name, :description, :brand, :min_price, :max_price, pictures: [])
  end
end
