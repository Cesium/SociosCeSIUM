class CompanyController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new( company_params )
    @company.save

    redirect_to :back
  end

  def edit
    @company = Company.find( params[:id] )
  end

  def update
    @company = Company.find( params[:id] )
    @company.update( company_params )
    redirect_to action: "view", id: params[:id]
  end

  def delete
    @company = Company.find( params[:id] )
    @company.destroy 
    render "index"
  end

  def view
    @company = Company.find( params[:id] ) 
  end

  private
    def company_params
      params.require(:company).permit( :name, :nif, :description )
    end
end
