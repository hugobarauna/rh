require 'spec_helper'

describe BenefitsController do

  def mock_benefit(stubs={})
    @mock_benefit ||= mock_model(Benefit, stubs)
  end

  describe "GET index" do
    it "assigns all benefits as @benefits" do
      Benefit.stub(:find).with(:all).and_return([mock_benefit])
      get :index
      assigns[:benefits].should == [mock_benefit]
    end
  end

  describe "GET show" do
    it "assigns the requested benefit as @benefit" do
      Benefit.stub(:find).with("37").and_return(mock_benefit)
      get :show, :id => "37"
      assigns[:benefit].should equal(mock_benefit)
    end
  end

  describe "GET new" do
    it "assigns a new benefit as @benefit" do
      Benefit.stub(:new).and_return(mock_benefit)
      get :new
      assigns[:benefit].should equal(mock_benefit)
    end
  end

  describe "GET edit" do
    it "assigns the requested benefit as @benefit" do
      Benefit.stub(:find).with("37").and_return(mock_benefit)
      get :edit, :id => "37"
      assigns[:benefit].should equal(mock_benefit)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created benefit as @benefit" do
        Benefit.stub(:new).with({'these' => 'params'}).and_return(mock_benefit(:save => true))
        post :create, :benefit => {:these => 'params'}
        assigns[:benefit].should equal(mock_benefit)
      end

      it "redirects to the created benefit" do
        Benefit.stub(:new).and_return(mock_benefit(:save => true))
        post :create, :benefit => {}
        response.should redirect_to(benefit_url(mock_benefit))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved benefit as @benefit" do
        Benefit.stub(:new).with({'these' => 'params'}).and_return(mock_benefit(:save => false))
        post :create, :benefit => {:these => 'params'}
        assigns[:benefit].should equal(mock_benefit)
      end

      it "re-renders the 'new' template" do
        Benefit.stub(:new).and_return(mock_benefit(:save => false))
        post :create, :benefit => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested benefit" do
        Benefit.should_receive(:find).with("37").and_return(mock_benefit)
        mock_benefit.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :benefit => {:these => 'params'}
      end

      it "assigns the requested benefit as @benefit" do
        Benefit.stub(:find).and_return(mock_benefit(:update_attributes => true))
        put :update, :id => "1"
        assigns[:benefit].should equal(mock_benefit)
      end

      it "redirects to the benefit" do
        Benefit.stub(:find).and_return(mock_benefit(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(benefit_url(mock_benefit))
      end
    end

    describe "with invalid params" do
      it "updates the requested benefit" do
        Benefit.should_receive(:find).with("37").and_return(mock_benefit)
        mock_benefit.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :benefit => {:these => 'params'}
      end

      it "assigns the benefit as @benefit" do
        Benefit.stub(:find).and_return(mock_benefit(:update_attributes => false))
        put :update, :id => "1"
        assigns[:benefit].should equal(mock_benefit)
      end

      it "re-renders the 'edit' template" do
        Benefit.stub(:find).and_return(mock_benefit(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested benefit" do
      Benefit.should_receive(:find).with("37").and_return(mock_benefit)
      mock_benefit.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the benefits list" do
      Benefit.stub(:find).and_return(mock_benefit(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(benefits_url)
    end
  end

end
