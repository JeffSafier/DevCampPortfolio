class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
  	@portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  	@portfolio = Portfolio.find(params[:id])
  end

   def show
   	@portfolio = Portfolio.find(params[:id])
   end

  def destroy
  	@portfolio = Portfolio.find(params[:id])
  	@portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end

  end

  
  def update

  	 @portfolio = Portfolio.find(params[:id])

     respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
       end
    end
  end

  def portfolio_params
    params.require(:portfolio).permit(
        :title, 
        :subtitle, 
        :body, 
        :thumbnail_image, 
        :main_image
        )
  end


end