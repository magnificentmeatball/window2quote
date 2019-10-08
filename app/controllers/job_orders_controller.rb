class JobOrdersController < ApplicationController
  def new
  end

  def index
    @job_orders = JobOrder.all
  end
 
  def show
    @job_order = JobOrder.find(params[:id])
  end

  def create
    @job_order = JobOrder.new(job_order_params)

    @job_order.save
    redirect_to @job_order
  end

  private
  def job_order_params
    params.require(:job_order).permit(:jobId, :jobsite, :price, :customerCell, :note, :contractDate)
  end
end
