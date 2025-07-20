require 'rails_helper'

RSpec.describe BreedsController, type: :controller do
  let!(:dog_size) { create(:dog_size) }
  let!(:breed) { create(:breed, dog_size: dog_size) }

  let(:valid_attributes) { { name: 'Labrador-retriver' } }
  let(:invalid_attributes) { { name: '' } }

  describe 'index' do
    context 'when open breeds of dog_size' do
      it 'shows breeds for dog_size' do
        get :index, params: { dog_size_id: dog_size.id }
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'create' do
    context 'when creates breed with valid data' do
      it 'creates a new breed for dog_size and redirects' do
        expect {
          post :create, params: { dog_size_id: dog_size.id, breed: valid_attributes }
        }.to change(Breed, :count).by(1)

        expect(response).to redirect_to(Breed.last)
      end
    end

    context 'when creates breed with invalid data' do
      it 'does not create' do
        expect {
          post :create, params: { dog_size_id: dog_size.id, breed: invalid_attributes }
        }.not_to change(Breed, :count)

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'update' do
    context 'when updates breed with valid data' do
      it 'updates the breed and redirects' do
        put :update, params: { id: breed.id, breed: valid_attributes }
        breed.reload
        expect(breed.name).to eq('Labrador-retriver')
        expect(response).to redirect_to(breed)
      end
    end

    context 'when updates breed with invalid data' do
      it 'does not update' do
        put :update, params: { id: breed.id, breed: invalid_attributes }
        breed.reload
        expect(breed.name).not_to eq('')
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'destroy' do
    context 'when click del-button on breed' do
      it 'deletes the breed and redirects to dog_size breeds' do
        breed_to_delete = create(:breed, dog_size: dog_size)

        expect {
          delete :destroy, params: { id: breed_to_delete.id }
        }.to change(Breed, :count).by(-1)

        expect(response).to redirect_to(dog_size_breeds_path(dog_size))
      end
    end
  end

  describe 'show' do
    context 'when click show breed' do
      it 'returns success' do
        get :show, params: { id: breed.id }
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'edit' do
    context 'when click edit breed' do
      it 'returns success' do
        get :edit, params: { id: breed.id }
        expect(response).to have_http_status(:success)
      end
    end
  end
end
