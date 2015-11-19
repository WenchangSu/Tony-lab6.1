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