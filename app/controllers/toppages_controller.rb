class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @tasklist = current_user.tasktasks.build  # form_for 用
      @tasklists = current_user.tasktasks.order('created_at DESC').page(params[:page])
    end
  end
end
