require 'rails_helper'

RSpec.describe DogSizesController, type: :controller do
  let!(:dog_size) { create(:dog_size) }
  let(:valid_attributes) { { size: 'Big', description: 'some description text' } }
  let(:invalid_attributes) { { size: '', description: 'still something' } }

  describe 'index' do
    context 'when open root_path' do
      it 'shows all dog sizes' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'create' do
    it 'creates with valid attributes and redirects' do
      expect {
        post :create, params: { dog_size: valid_attributes }
      }.to change(DogSize, :count).by(1)

      expect(response).to redirect_to(dog_size_path(DogSize.last))
    end

    it 'does not create with invalid attributes' do
      expect {
        post :create, params: { dog_size: invalid_attributes }
      }.not_to change(DogSize, :count)

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe 'update' do
    it 'updates with valid attributes and redirects' do
      put :update, params: { id: dog_size.id, dog_size: valid_attributes }
      dog_size.reload
      expect(dog_size.size).to eq('Big')
      expect(response).to redirect_to(dog_size_path(dog_size))
    end

    it 'does not update with invalid attributes' do
      put :update, params: { id: dog_size.id, dog_size: invalid_attributes }
      dog_size.reload
      expect(dog_size.size).not_to eq('')
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe 'destroy' do
    context 'when click delete-button' do
      it 'dog_size is deleted successfully and redirects' do
        dog_size = create(:dog_size)

        expect {
          delete :destroy, params: { id: dog_size.id }
        }.to change(DogSize, :count).by(-1)

        expect(response).to redirect_to(dog_sizes_path)
      end
    end
  end
end
