require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  
  let(:valid_attributes) {{}}

  let(:valid_session) { {}  }

  before(:each) do
   @post = Post.new(title: 'My title', content: 'My content')
   @post.save
  end

  context '#index' do
    it "shows index template" do
      get :index
      expect(response).to render_template("index")
    end
    it "displays the blogs" do
      get :index
      expect(assigns(:posts)).to include(@post)
    end
  end


  context '#new' do
    it "render new template" do
      get :new
    expect(response).to render_template("new")
    end 
    it "assign a new post to @post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end

  end


  context '#create' do
    it "adds a new post " do
      expect { post :create, {:post => valid_attributes}, valid_session }.to change(Post, :count).by(1)
    end
    it "creat a new post" do
      post :create, {:post => valid_attributes}, valid_session
      expect(response).to redirect_to(Post.last)
    end
  end




  context "#destroy" do
    it "delete the text and redirects to the posts list" do
      expect{delete :destroy, id: @post}.to change(Post, :count).by(-1)
      expect(response).to redirect_to posts_path
    end
  end
end

=begin

Require ‘rails_helper’
RSpec.describe Post, type: :controller do
context ‘#index’ do
pending “Your code here”
end
context ‘#new’ do
pending “Your code here”
end
context ‘#create’ do
pending “Your code here”
end
context ‘#destroy’ do
pending “Your code here”
end
end

=end