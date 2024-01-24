class InvestmentsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @investments = Group.find(params[:group_id]).investment.order(id: :asc)
  end

  def new
    @group = Group.find(params[:group_id])
    @investment = current_user.investments.new
  end

  def create
    @investment = current_user.investments.new(investment_params)
    Group.find(params[:group_id]).investment.push(@investment)

    respond_to do |format|
      if @investment.save
        flash[:success] = '...created!'
        format.html { redirect_to group_investments_path, notice: 'Investment Created' }
      else
        flash[:error] = '...hmmm, try again'
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def investment_params
    params.require(:investment).permit(:name, :amount, :user_id)
  end
end
