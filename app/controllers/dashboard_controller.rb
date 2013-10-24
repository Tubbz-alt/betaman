class DashboardController < ApplicationController
  def index
    @betas = @current_user.betas
    @available_betas = Beta.not_finished - @betas

    @active_betas = @betas.active
    @planned_betas = @betas.planned
    @finished_betas = @betas.finished

    @available_betas = Beta.not_finished - @betas

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @betas }
    end
  end

  def betas_by_status(status)
    if status == 'active'
      return Betas.active
    else
      return Betas.all
    end
  end
end
