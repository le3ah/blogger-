class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.find(params[:id])
  end
end
