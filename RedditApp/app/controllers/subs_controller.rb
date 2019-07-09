#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  user_id     :integer          not null

class SubsController < ApplicationController
  before_action :ensure_logged_in
  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)
     @sub.user_id = current_user.id
     if @sub.save
        redirect_to subs_url
     else
      flash.now[:errors] = @sub.errors.full_messages
      render :new
     end
  end

  def edit
    @sub = Sub.find(params[:id])
  end

  def update
    @sub = User.subs.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_url
    else
    end
  end

  def index
    @subs = Sub.all
  end

  def show
    
    @sub = Sub.find(params[:id])
  end

  def sub_params
    params.require(:sub).permit(:title, :description)
  end
end
