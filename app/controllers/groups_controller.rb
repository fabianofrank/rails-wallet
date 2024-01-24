class GroupsController < ApplicationController
  # WALLETS

  def index
    @groups = current_user.groups.order(id: :desc)
    @amount = Investment.where(user_id: current_user.id).sum(:amount)
    @group = Group.first # Fix for missing group_id at the Navbar conditionals
  end

  def new
    @new_group = current_user.groups.new
    @icons = ['⚽', '🎮', '🚗', '🚢', '🚌', '🚊', '💈', '🏥', '🏭', '🏖️', '🍽️', '🥂', '🤖']
    @group = Group.first # Fix for missing group_id at the Navbar conditionals
  end

  def create
    @group = current_user.groups.new(group_params)
    @icons = ['⚽', '🎮', '🚗', '🚢', '🚌', '🚊', '💈', '🏥', '🏭', '🏖️', '🍽️', '🥂', '🤖']

    respond_to do |format|
      if @group.save
        flash[:success] = '...created!'
        format.html { redirect_to groups_path, notice: 'Wallet Created' }
      else
        flash[:error] = '...hmmm, try again'
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
