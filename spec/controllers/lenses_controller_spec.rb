require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LensesController do

  # This should return the minimal set of attributes required to create a valid
  # Lens. As you add validations to Lens, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LensesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all lenses as @lenses" do
      lens = Lens.create! valid_attributes
      get :index, {}, valid_session
      assigns(:lenses).should eq([lens])
    end
  end

  describe "GET show" do
    it "assigns the requested lens as @lens" do
      lens = Lens.create! valid_attributes
      get :show, {:id => lens.to_param}, valid_session
      assigns(:lens).should eq(lens)
    end
  end

  describe "GET new" do
    it "assigns a new lens as @lens" do
      get :new, {}, valid_session
      assigns(:lens).should be_a_new(Lens)
    end
  end

  describe "GET edit" do
    it "assigns the requested lens as @lens" do
      lens = Lens.create! valid_attributes
      get :edit, {:id => lens.to_param}, valid_session
      assigns(:lens).should eq(lens)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Lens" do
        expect {
          post :create, {:lens => valid_attributes}, valid_session
        }.to change(Lens, :count).by(1)
      end

      it "assigns a newly created lens as @lens" do
        post :create, {:lens => valid_attributes}, valid_session
        assigns(:lens).should be_a(Lens)
        assigns(:lens).should be_persisted
      end

      it "redirects to the created lens" do
        post :create, {:lens => valid_attributes}, valid_session
        response.should redirect_to(Lens.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved lens as @lens" do
        # Trigger the behavior that occurs when invalid params are submitted
        Lens.any_instance.stub(:save).and_return(false)
        post :create, {:lens => {}}, valid_session
        assigns(:lens).should be_a_new(Lens)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Lens.any_instance.stub(:save).and_return(false)
        post :create, {:lens => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested lens" do
        lens = Lens.create! valid_attributes
        # Assuming there are no other lenses in the database, this
        # specifies that the Lens created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Lens.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => lens.to_param, :lens => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested lens as @lens" do
        lens = Lens.create! valid_attributes
        put :update, {:id => lens.to_param, :lens => valid_attributes}, valid_session
        assigns(:lens).should eq(lens)
      end

      it "redirects to the lens" do
        lens = Lens.create! valid_attributes
        put :update, {:id => lens.to_param, :lens => valid_attributes}, valid_session
        response.should redirect_to(lens)
      end
    end

    describe "with invalid params" do
      it "assigns the lens as @lens" do
        lens = Lens.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Lens.any_instance.stub(:save).and_return(false)
        put :update, {:id => lens.to_param, :lens => {}}, valid_session
        assigns(:lens).should eq(lens)
      end

      it "re-renders the 'edit' template" do
        lens = Lens.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Lens.any_instance.stub(:save).and_return(false)
        put :update, {:id => lens.to_param, :lens => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested lens" do
      lens = Lens.create! valid_attributes
      expect {
        delete :destroy, {:id => lens.to_param}, valid_session
      }.to change(Lens, :count).by(-1)
    end

    it "redirects to the lenses list" do
      lens = Lens.create! valid_attributes
      delete :destroy, {:id => lens.to_param}, valid_session
      response.should redirect_to(lenses_url)
    end
  end

end