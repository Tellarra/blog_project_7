class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @list_article = Article.all
    end

    def new

    end

    def create
        @new_article = Article.new(params.require(:article).permit(:title, :description))
        render plain: @new_article.inspect
    end
end
