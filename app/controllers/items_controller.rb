class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: []
  # before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @items = Item.where(user_id: current_user.id)
  end

  # def show
  #   #see item of another user
  # end

  # def create
  #   @item = Item.new(item_params)
  #   if @item.save!
  #     redirect to @item, notice: "Item added"
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   if @item.update(item_params)
  #     redirect_to @item, notice: "Item updated"
  #   else
  #     render :edit
  #   end
  # end

  # def edit
  # end

  # def new
  #   @item = Item.new
  # end

  # def destroy
  #   @item.destroy
  #   redirect_to items_path, notice: "Item destroyed"
  # end

  # private

  # def set_item
  #   @item = Item.find(params[:id])
  # end

  # def item_params
  #   params.require(:item).permit(:name, :description)
  # end
end