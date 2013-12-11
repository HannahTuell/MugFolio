require 'spec_helper'

describe Comment do

  before(:each) do
    @attr = {
      :post => "Example Post",
      :content => "Example Content",
      :user => "Example User"
    }
  end

  it "should create a new instance given a valid attribute" do
    Comment.create!(@attr)
  end

  it "should have content" do
    Comment.new(@attr).should_not be_blank
  end

  it "should belong to user" do
    user_comment = Comment.new(@attr)
	user_comment.should respond_to(:user)
  end

  it "should belong to post" do
    user_comment = Comment.new(@attr)
	user_comment.should respond_to(:post)
  end

end
