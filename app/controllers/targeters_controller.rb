class TargetersController < ApplicationController
  before_action :set_group

  def index
    @targeter = Targeter.new
    @targeters = @group.targeters.includes(:user)
    @name = Targeter.find { |targeter| targeter.user_id == current_user.id && targeter.group_id == @group.id}
    # name = Targeter.find { |targeter| targeter.group_id == @group.id }
    # @name = Targeter.find { |targeter| @group.user.user_id == targeter.user_id }

  end

  def create
    @targeter = @group.targeters.new(targeter_params)
    if @targeter.save
      redirect_to group_targeters_path(@group), notice: 'メッセージが送信されました'
    else
      @targeters = @group.targeters.includes(:user)
      flash.now[:alert] = 'ターゲットネームを入力してください。'
      render :index
    end
  end

  def edit
    @targeter = Targeter.find(params[:id])
  end

  def update
    @targeter = Targeter.find(params[:id])
    if @targeter.update(targeter_params)
      redirect_to root_path, notice: 'ターゲット名を変更しました'
    else
      render :edit
    end
  end


  private

  def targeter_params
    params.require(:targeter).permit(:targeter_name).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end


end
