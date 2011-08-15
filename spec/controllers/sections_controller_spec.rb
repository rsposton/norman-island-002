require 'spec_helper'

describe SectionsController do

  describe "GET Sections 'list'" do
    it "should be successful" do
      get 'list'
      response.should be_success
    end

    it "should get the list even if the index is called" do
      get 'index'
      response.should be_success
    end

    #it "should have the right title" do 
      #get 'list'
      #response.should have_selector("title", :content => "CMS Demo")
    #end

  end

end
