class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :update, :destroy, :edit]
    def index
        @articles = Article.all
    end

    def show
    end

    def edit
    end

    def update
        byebug
        if @article.update(article_params)
            flash[:notice] = 'Article was updated successfully'
            redirect_to @article
        else
            # redirect_to 'edit'
            redirect_to edit_article_path(@article)
        end
   end

# edit_article GET    /articles/:id/edit(.:format)  articles#edit

    def new
        @article = Article.new
    end
    
    def create
        byebug
        @article = Article.new(article_params)
        if @article.save
            flash[:noticeS] = 'Article was successfully saved - good boy'
            redirect_to @article
        else
            render 'new'
        end
    end


    def destroy
        @article.destroy
        redirect_to articles_path
    end



   private 

   def set_article
        @article = Article.find(params[:id])
   end

   def article_params
    params.require(:article).permit(:title, :description)
   end
    

end