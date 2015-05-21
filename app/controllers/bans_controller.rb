class BansController < ApplicationController
  def update
    @ban = Ban.find(params[:id])
    if @ban.update(ban_params)
      redirect_to root_path
    end
  end

  private

  def ban_params
    params.require(:ban).permit(:start_time, :end_time, :user_id)
  end
end
