class Api::V1::ListsController < Api::V1::ApplicationController
  def index
    @lists = List.all

    render json: {users: @lists}
  end

  def show
    @list = List.find(list_params[:id])

    render json: {list: @list}
  end

  def create
    @list = List.create(list_params)

    render json: {list: @list}
  end

  def update
    @list = List.find(list_params[:id])
    @list.update(list_params)

    render json: {list: @list}
  end

  private

  def list_params
     params.require(:list).permit(:keyword, :note_id)
  end

end
