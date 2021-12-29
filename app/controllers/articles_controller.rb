class ArticlesController < ApplicationController
    
    #Para reciclar codigo
    #before_action :find_article, only: [:edit, :update, :show, :destory]  # tambien puede usarse except
    before_action :find_article, except: [:new, :create, :index] 


    def index
        @articles = Article.all
    end

    def show
        #@article = Article.find(params[:id])
    end

    def edit
       #@article = Article.find(params[:id])
       puts "\n\n\n #{@article.persisted?} \n\n\n"
    end

    def update
       # @article = Article.find(params[:id])
        @article.update(title: params[:article] [:title], content: params[:article] [:content])

        redirect_to @article
    end

    def new
      @article = Article.new
      #@article.title = "Demo"
    end

    #todas las consultas se haran a través de los modelos 
    def create
      @article =  Article.create(title: params[:article] [:title], content: params[:article] [:content])
      # render json: @article  # envia json para mostrar
    end


    def find_article 
        @article = Article.find(params[:id])
    end

    def destroy
        #@article = Article.find(params[:id])
        @article.destroy(params[:id])
        redirect_to root_path
    end

end
