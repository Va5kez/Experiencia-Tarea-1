class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @user = User.find(params[:user_id])
    @article = @user.articles.build
  end

  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.build(article_params)

   if @article.save
     redirect_to articulos_path, notice: "AGREGADO CON EXITO"
   else
     flash[:errors] = "NO SE PUDO AGREGAR"
     render :new
   end
  end

  def show
    @article = Article.find_by (params[:id])
  end

  def edit
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articulos_path, notice: "ELIMINADO CON EXITO"
  end

  protected
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
