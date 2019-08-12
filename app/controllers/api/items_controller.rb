class Api::ItemsController < Api::BaseController
  before_action :doorkeeper_authorize! # equivalent of authenticate_user!

  def index
    @items = Item.all
    respond_with @items
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    if @item.save
      respond_with @item
    else
      respond_with @item.errors
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :description)
  end

  # the rest of actions
end