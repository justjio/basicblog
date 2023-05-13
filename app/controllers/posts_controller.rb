class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  # posts_path in our form submits to this method
  def create
    # render plain: params[:post].inspect
    # Output in terminal is
    # Parameters: {"authenticity_token"=>"[FILTERED]", "post"=>{"title"=>"dayo", "body"=>"my body"}, "commit"=>"Save Post"}
    @post = Post.new(post_params)

    @post.save
    redirect_to @post # This redirect is handled by the show method and view
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
