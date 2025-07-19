class CreateDogSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :dog_sizes do |t|
      t.string :size, null: false, uniq: true
      t.text :description, default: 'weight ..-.. and height ..-..'

      t.timestamps
    end
  end
end
