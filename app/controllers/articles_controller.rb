class ArticlesController < ApplicationController
    def index
        @articles = Article.all    
    end
    
    def new
        @article = Article.new
    end
    
    def edit
       @article = Article.find(params[:id]) 
    end    
    
    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully created"
           redirect_to article_path(@article) 
        else
            render 'new' 
        end 
    end
    
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was succesfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end    
    end    
        def article_params
            params.require(:article).permit(:title, :categories, :start, :end, :description, :locations, :terms_and_conditions)
        end
    
    def show
      @article = Article.find(params[:id])  
    end  
    
    def destroy
        @article = Article.find(params[:id]).destroy
        @article.destroy
        flash[:notice] = "Article was successfully deleted"
        redirect_to articles_path
    end    
    
    private
        def article_params
            params.require(:article).permit(:title, :categories, :start, :end, :description, :locations, :terms_and_conditions)
        end
end
