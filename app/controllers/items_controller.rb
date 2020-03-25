class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: []
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, except: :home
  def index
    @items = Item.where(user: current_user)
  end

  # def show
  #   #see item of another user
  # end

  def create
    @item = Item.new(item_params)
    @item.user = current_user #remove when pundit is implemented
    if @item.save!
      redirect_to items_path, notice: "Item added"
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to items_path, notice: "Item updated"
    else
      render :edit
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: "Item destroyed"
  end

  # private

  # def set_item
  #   @item = Item.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(:name, :description, :brand, :picture)
  end
end
