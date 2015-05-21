class BansController < ApplicationController

  def update
    @ban = Ban.find(params[:id])
    if @ban.update(ban_params)
      redirect_to root_path
    end
  end

  #def ban_user
   # @ban = current_user.ban.new
   # length = rand(1..999)
   # @ban.start_time = DateTime.now 
   # if rand(1..6) == 1
   #   @ban.end_time = DateTime.now + length.minutes
   # else
   #   @ban.end_time == DateTime.now + length.years
   # end
 # end

  private

  def ban_params
    params.require(:ban).permit(:start_time, :end_time, :user_id)
  end
end
