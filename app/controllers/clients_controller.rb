class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    redirect_to clients_path
  end


  private
    def client_params
      params.require(:client).permit(:name)
    end


end