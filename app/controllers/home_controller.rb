class HomeController < ApplicationController
  def index
  
  end
  
  def write
    #@almond = params[:title]
    #@anchovy = params[:content]
    
    #이메일 보내는 내용
    new_post = Post.new
    new_post.Title = params[:title]
    new_post.Content = params[:content]
    new_post.save
    
    redirect_to "/list"
  end
  
  def list
    @everypost =  Post.all.order("id desc")
  
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
     redirect_to "/list"
  end  
  
  def update_view
    @one_post = Post.find(params[:post_id])
  
  end
  
  def siljae_update
    @one_post = Post.find(params[:post_id])
    @one_post.Title = params[:title]
    @one_post.Content = params[:content]
    @one_post.save
     redirect_to "/list"
  end
end
