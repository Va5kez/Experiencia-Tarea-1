class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

   if @user.save
     redirect_to users_path, notice: "USUARIO AGREGADO CON EXITO"
   else
     flash[:errors] = "NO SE PUDO AGREGAR USUARIO"
     render :new
   end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "USUARIO ELIMINADO CON EXITO"
  end

  protected
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
