class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @list_article = Article.all
    end
end
