require 'rails_helper'


RSpec.describe AssetsController, type: :controller do

  let(:valid_attributes) {
  }

  let(:invalid_attributes) {
  }

  let(:valid_session) { {} }


  describe "GET #index" do
    it "assigns all assets as @assets" do
      asset = Asset.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:assets)).to eq([asset])
    end
  end

  describe "GET #show" do
    it "assigns the requested asset as @asset" do
      asset = Asset.create! valid_attributes
      get :show, {:id => asset.to_param}, valid_session
      expect(assigns(:asset)).to eq(asset)
    end
  end

  describe "GET #new" do
    it "assigns a new asset as @asset" do
      get :new, {}, valid_session
      expect(assigns(:asset)).to be_a_new(Asset)
    end
  end

  describe "GET #edit" do
    it "assigns the requested asset as @asset" do
      asset = Asset.create! valid_attributes
      get :edit, {:id => asset.to_param}, valid_session
      expect(assigns(:asset)).to eq(asset)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Asset" do
        expect {
          post :create, {:asset => valid_attributes}, valid_session
        }.to change(Asset, :count).by(1)
      end

      it "assigns a newly created asset as @asset" do
        post :create, {:asset => valid_attributes}, valid_session
        expect(assigns(:asset)).to be_a(Asset)
        expect(assigns(:asset)).to be_persisted
      end

      it "redirects to the created asset" do
        post :create, {:asset => valid_attributes}, valid_session
        expect(response).to redirect_to(Asset.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved asset as @asset" do
        post :create, {:asset => invalid_attributes}, valid_session
        expect(assigns(:asset)).to be_a_new(Asset)
      end

      it "re-renders the 'new' template" do
        post :create, {:asset => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested asset" do
        asset = Asset.create! valid_attributes
        put :update, {:id => asset.to_param, :asset => new_attributes}, valid_session
        asset.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested asset as @asset" do
        asset = Asset.create! valid_attributes
        put :update, {:id => asset.to_param, :asset => valid_attributes}, valid_session
        expect(assigns(:asset)).to eq(asset)
      end

      it "redirects to the asset" do
        asset = Asset.create! valid_attributes
        put :update, {:id => asset.to_param, :asset => valid_attributes}, valid_session
        expect(response).to redirect_to(asset)
      end
    end

    context "with invalid params" do
      it "assigns the asset as @asset" do
        asset = Asset.create! valid_attributes
        put :update, {:id => asset.to_param, :asset => invalid_attributes}, valid_session
        expect(assigns(:asset)).to eq(asset)
      end

      it "re-renders the 'edit' template" do
        asset = Asset.create! valid_attributes
        put :update, {:id => asset.to_param, :asset => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested asset" do
      asset = Asset.create! valid_attributes
      expect {
        delete :destroy, {:id => asset.to_param}, valid_session
      }.to change(Asset, :count).by(-1)
    end

    it "redirects to the assets list" do
      asset = Asset.create! valid_attributes
      delete :destroy, {:id => asset.to_param}, valid_session
      expect(response).to redirect_to(assets_url)
    end
  end

end
