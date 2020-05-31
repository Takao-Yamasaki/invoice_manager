class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
  end
  
  def new
    @summary = Summary.new
  end

  def create
    Summary.create(summary_params)
    redirect_to action: :index
  end

  def edit
    @summary = Summary.find(params[:id])
  end

  def update
    summary = Summary.find(params[:id])
    summary.update
    redirect_to action: :index
  end

  def destroy
    summary = Summary.find(params[:id])
    summary.destroy
    redirect_to action :index
  end

  private
  def summary_params
    params.require(:summary).permit(:invoice_id,:client_id,:item_id,:amount,:registration)
  end
end