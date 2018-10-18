class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def index
    render json: Task.all
  end

  def create
    Task = Task.create(Task_params)
    render json: Task
  end

  def destroy
    Task.destroy(params[:id])
  end

  def update
    Task = Task.find(params[:id])
    Task.update_attributes(Task_params)
    render json: Task
  end

  private

  def Task_params
    params.require(:Task).permit(:id, :name, :description)
  end
end
