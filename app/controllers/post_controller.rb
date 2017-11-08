class PostController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title: @title,
            content: @content
            )
    end
    
    def destroy
        @id = params[:id]
        post = Post.find(@id)
        post.destroy
        # 지울 글을 찾는다.
        # 해당 글을 제거한다.
        
    end
    
    def show
        @show = Post.find(params[:id])
        # @id = params[:id]
        # post = Post.find(@id)
        
    end
    
    def modify
        @show = Post.find(params[:id])
        # @id = params[:id]
        # post = Post.find(@id)
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(
            title: params[:title],
            content: params[:content]
            )
        redirect_to '/'    
        
        
    end

end
