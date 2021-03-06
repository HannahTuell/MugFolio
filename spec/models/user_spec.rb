require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
      :name => "Testname",
      :email => "testemail@test.com",
      :password => "testpassword",
      :password_confirmation => "testpassword" 
    }
  end

  it "should create a new user given valid user information" do
    User.create!(@attr)
  end

  it "should require an email address" do
    no_email = User.new(@attr.merge(:email => ""))
    no_email.should_not be_valid
  end

  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_address = User.new(@attr.merge(:email => address))
      valid_email_address.should be_valid
    end
  end

  it "should not accept invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_address = User.new(@attr.merge(:email => address))
      invalid_email_address.should_not be_valid
    end
  end

  it "should not accept duplicate email addresses" do
    User.create!(@attr)
    duplicate_email = User.new(@attr)
    duplicate_email.should_not be_valid
  end

  it "should not accept email addresses that are idetical with upercase" do
    upcase_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcase_email))
    duplicate_email_upercase = User.new(@attr)
    duplicate_email_upercase.should_not be_valid
  end

  describe "password" do

    before(:each) do
      @user = User.new(@attr)
    end

    it "should have a password" do
      @user.should respond_to(:password)
    end

    it "should have a password confirmation" do
      @user.should respond_to(:password_confirmation)
    end
  end

  describe "password validations" do

    it "should require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).
        should_not be_valid
    end

    it "should require a matching password confirmation" do
      User.new(@attr.merge(:password_confirmation => "invalid")).
        should_not be_valid
    end

    it "should not accept a short password" do
      password_too_short = "a" * 5
      password_check = @attr.merge(:password => password_too_short, :password_confirmation => password_too_short)
      User.new(password_check).should_not be_valid
    end

  end

  describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end

    it "should have a encrypted password" do
      @user.should respond_to(:encrypted_password)
    end

    it "should set a encrypted password" do
      @user.encrypted_password.should_not be_blank
    end

  end

end
