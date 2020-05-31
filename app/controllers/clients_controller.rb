class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end
  
  def new
    @client = Client.new
  end
  
  def create
    Client.create(client_params)
    redirect_to action: :index
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    redirect_to action: :index
  end

  def edit
    @client = Client.find(params[:id]) 
  end

  def update
    client = Client.find(params[:id])
    client.update(client_params)
    redirect_to action: :index
  end

  private
  def client_params
    params.require(:client).permit(:name,:post_code,:address,:tel)
  end
end