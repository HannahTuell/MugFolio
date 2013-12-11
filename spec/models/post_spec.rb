require 'spec_helper'

describe Post do

  before(:each) do
    @attr = {
      :content => "Example Post",
      :user_id => "1",
      :user => "Example User"
    }
  end

  it "should create a new instance given a valid attribute" do
    Post.create!(@attr)
  end

  it "should have content" do
    Post.new(@attr).should_not be_blank
  end

  it "should belong to user" do
    user_post = Post.new(@attr)
	user_post.should respond_to(:user)
  end

end
