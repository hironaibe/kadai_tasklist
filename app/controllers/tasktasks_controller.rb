class TasktasksController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]

  def create
    @tasktask = current_user.tasktasks.build(tasktask_params)
    
    if @tasktask.save
      flash[:success] = 'Taskが正常に追加されました'
      redirect_to root_url
    else
      @tasktasks = current_user.tasktasks.order('created_at DESC').page(params[:page])
      flash.now[:danger] = 'Taskが追加されませんでした'
      render :'toppages/index'
    end
  end

  def destroy
    @tasktask.destroy
    flash[:success] = 'Taskは正常に削除されました'
    redirect_back(fallback_location: root_path)
  end

private
# strong parameter
def tasktask_params
  params.require(:tasktask).permit(:status, :content)
end

def correct_user
  @tasktask = current_user.tasktasks.find_by(id: params[:id])
  unless @tasktask
    redirect_to root_path
  end
end
end