class PagesController < ApplicationController

  before_filter :load_page, only: [:edit, :update, :destroy]
  
  def new
    @page = Page.new
  end

  def create
    @page = Page.create(page_params)
    if @page.save
      redirect_to @page
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def load_page
    @page = Page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :body, :banner)
  end

end
