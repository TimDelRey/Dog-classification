# == Schema Information
#
# Table name: breeds
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dog_size_id :bigint           not null
#
# Indexes
#
#  index_breeds_on_dog_size_id  (dog_size_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_size_id => dog_sizes.id)
#
class Breed < ApplicationRecord
  belongs_to :dog_size
  has_one_attached :image

  validates :name, presence: true
end
