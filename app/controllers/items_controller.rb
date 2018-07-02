class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to root_path, notice: "You need to #{@item.name}"
    else
      flash.now[:alert] = "Error creating item. Please try again."
      render @user
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      redirect_to root_path, notice: "#{@item.name} completed."
    else
      flash.now[:alert] = "Error completing item. Please try again."
      render @user
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
