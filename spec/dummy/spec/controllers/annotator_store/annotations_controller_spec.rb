require 'rails_helper'

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

module AnnotatorStore
  RSpec.describe AnnotationsController, type: :controller do

    routes { AnnotatorStore::Engine.routes }

    # This should return the minimal set of attributes required to create a valid
    # Annotation. As you add validations to Annotation, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) do
      {
        version: 'v1.0',
        text: 'A note I wrote',
        quote: 'the text that was annotated',
        uri: 'http://example.com',
        ranges: '{}'
      }
    end

    let(:invalid_attributes) do
      skip('Add a hash of attributes invalid for your model')
    end

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # AnnotatorStore::AnnotationsController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    let(:annotation) { FactoryGirl.create :annotation }

    describe 'GET show' do
      it 'assigns the requested annotation as @annotation' do
        get :show, { id: annotation.to_param, format: :json }, valid_session
        expect(assigns(:annotation)).to eq(annotation)
      end
    end

    # describe 'POST create' do
    #   describe 'with valid params' do
    #     it 'creates a new Annotation' do
    #       action = post :create, { annotation: valid_attributes }, valid_session
    #       expect { action }.to change(Annotation, :count).by(1)
    #     end

    #     it 'assigns a newly created annotation as @annotation' do
    #       post :create, { annotation: valid_attributes }, valid_session
    #       expect(assigns(:annotation)).to be_a(Annotation)
    #       expect(assigns(:annotation)).to be_persisted
    #     end

    #     it 'redirects to the created annotation' do
    #       post :create, { annotation: valid_attributes }, valid_session
    #       expect(response).to redirect_to(Annotation.last)
    #     end
    #   end

    #   describe 'with invalid params' do
    #     it 'assigns a newly created but unsaved annotation as @annotation' do
    #       post :create, { annotation: invalid_attributes }, valid_session
    #       expect(assigns(:annotation)).to be_a_new(Annotation)
    #     end

    #     it "re-renders the 'new' template" do
    #       post :create, { annotation: invalid_attributes }, valid_session
    #       expect(response).to render_template('new')
    #     end
    #   end
    # end

    # describe 'PUT update' do
    #   describe 'with valid params' do
    #     let(:new_attributes) do
    #       skip('Add a hash of attributes valid for your model')
    #     end

    #     it 'updates the requested annotation' do
    #       annotation = Annotation.create! valid_attributes
    #       put :update, { id: annotation.to_param, annotation: new_attributes }, valid_session
    #       annotation.reload
    #       skip('Add assertions for updated state')
    #     end

    #     it 'assigns the requested annotation as @annotation' do
    #       annotation = Annotation.create! valid_attributes
    #       put :update, { id: annotation.to_param, annotation: valid_attributes }, valid_session
    #       expect(assigns(:annotation)).to eq(annotation)
    #     end

    #     it 'redirects to the annotation' do
    #       annotation = Annotation.create! valid_attributes
    #       put :update, { id: annotation.to_param, annotation: valid_attributes }, valid_session
    #       expect(response).to redirect_to(annotation)
    #     end
    #   end

    #   describe 'with invalid params' do
    #     it 'assigns the annotation as @annotation' do
    #       annotation = Annotation.create! valid_attributes
    #       put :update, { id: annotation.to_param, annotation: invalid_attributes }, valid_session
    #       expect(assigns(:annotation)).to eq(annotation)
    #     end

    #     it "re-renders the 'edit' template" do
    #       annotation = Annotation.create! valid_attributes
    #       put :update, { id: annotation.to_param, annotation: invalid_attributes }, valid_session
    #       expect(response).to render_template('edit')
    #     end
    #   end
    # end

    # describe 'DELETE destroy' do
    #   it 'destroys the requested annotation' do
    #     annotation = Annotation.create! valid_attributes
    #     action = delete :destroy, { id: annotation.to_param }, valid_session
    #     expect { action }.to change(Annotation, :count).by(-1)
    #   end

    #   it 'redirects to the annotations list' do
    #     annotation = Annotation.create! valid_attributes
    #     delete :destroy, { id: annotation.to_param }, valid_session
    #     expect(response).to redirect_to(annotations_url)
    #   end
    # end
  end
end
