class InvestmentsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @investments = Group.find(params[:group_id]).investment.order(id: :asc)
  end
end
