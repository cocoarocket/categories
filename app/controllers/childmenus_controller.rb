class ChildmenusController < ApplicationController
  def show
    @childmenu = Childmenu.find(params[:id])
  end

  def new
    @childmenu = Childmenu.new(:mainmenu_id => params[:parent_id])
  end

  def create
    @childmenu = Childmenu.new(params.require(:childmenu).permit(:mainmenu_id, :title, :text))
    if @childmenu.save
      redirect_to @childmenu, notice: 'Childmenu was successfully updated.'
    else
      flash[:error] = 'Delete Childmenu error'
      render action: "new"
    end
  end

  def edit
  end

  def update
  end

  def desrtoy
    @delete = Childmenu.find(params[:id])
    if @delete.destroy
      redirect_to new_childmenus_path, notice: 'Childmenu was successfully deleted.'
    else
      flash[:success] = 'Delete Childmenu error'
      render 'new'
    end
  end
end