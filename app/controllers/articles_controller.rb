class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        # byebug
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to @article
    end

    # def create
    #     @article = Article.new(params.require(:article).permit(:title, :description))
    #     @article = Article.new(params.require(:article).permit(:title, :description))
    #     @article.save
    #     redirect_to @article
    #   end
    

end