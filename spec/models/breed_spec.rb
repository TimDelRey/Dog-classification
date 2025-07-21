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
require 'rails_helper'

RSpec.describe Breed, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
