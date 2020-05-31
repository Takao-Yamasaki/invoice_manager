class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create    
    Item.create(item_params)
    redirect_to action: :index
  end

  def edit
      @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to action: :index
  end

  def destroy
      item = Item.find(params[:id])
      item.destroy
      redirect_to action: :index
  end

  private
  def item_params
    params.require(:item).permit(:name,:price)
  end
end