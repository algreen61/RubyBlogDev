class ArticlesController < ApplicationController
  before_action :article_set, only: [:show, :edit, :update, :destroy]


  def index
    @articles=Article.all
  end

  def show
    #@article=Article.find(params[:id])
  end

  def new
    @article=Article.new
  end

  def edit
    #@article=Article.find(params[:id])
  end

  def create
    #render plain: params[:article] shows useful stuff... a hash
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article created succesfully."
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    #@article=Article.find(params[:id])

      if @article.update(article_params)
        flash[:notice] = "Article updated succesfully."
        redirect_to @article
      else
        render 'edit'
      end
  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  private #only private to the controller mentioned

    def article_params
      params.require(:article).permit(:title,:text)
    end

    def article_set
      @article=Article.find(params[:id])
    end

end
