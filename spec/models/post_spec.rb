=begin
require 'rails_helper'

RSpec.describe Post, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
=end

#=begin
require 'rails_helper'
RSpec.describe Post, type: :model do

before(:all) do
@post = Post.new(title: 'My Title', content: 'My content')
end

it 'should have a matching content' do
expect(@post.content).to eq('My content')
end

it "should have a matching title" do
expect(@post.title).to eq('My Title')
end

end
#=end

=begin
require 'rails_helper'
RSpec.describe Post, type: :controller do

context '#index' do
pending "Your code here"
end

context '#new' do
pending "Your code here"
end

context '#create' do
pending "Your code here"
end

context '#destroy' do
pending "Your code here"
end

end
=end