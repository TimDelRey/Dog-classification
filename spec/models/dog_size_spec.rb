# == Schema Information
#
# Table name: dog_sizes
#
#  id          :bigint           not null, primary key
#  description :text             default("weight ..-.. and height ..-..")
#  size        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe DogSize, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
