class RequestsController < ApplicationController

  def index
    @requests = FormRequest.all
  end

  def new

  end

  def create
    createdata
  end

  def create2
    createdata
  end
  private
  def createdata
    FormRequest.create(name: params[:name],email: params[:email],url: request.fullpath)
    redirect_to :action => "index"
  end
end
