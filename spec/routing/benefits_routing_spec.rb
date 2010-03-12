require 'spec_helper'

describe BenefitsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/benefits" }.should route_to(:controller => "benefits", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/benefits/new" }.should route_to(:controller => "benefits", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/benefits/1" }.should route_to(:controller => "benefits", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/benefits/1/edit" }.should route_to(:controller => "benefits", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/benefits" }.should route_to(:controller => "benefits", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/benefits/1" }.should route_to(:controller => "benefits", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/benefits/1" }.should route_to(:controller => "benefits", :action => "destroy", :id => "1") 
    end
  end
end
