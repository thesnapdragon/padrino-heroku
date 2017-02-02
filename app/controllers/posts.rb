PadrinoHeroku::App.controllers :posts do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index do
    @posts = Post.order('created_at DESC').page(params[:page])

    last_modified @posts.first.updated_at
    etag @posts.first.sha1

    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post.find_by_id(params[:id])

    last_modified @post.updated_at
    etag @post.sha1

    render 'posts/show'
  end

end
