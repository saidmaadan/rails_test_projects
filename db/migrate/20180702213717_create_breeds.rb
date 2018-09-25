class CreateBreeds < ActiveRecord::Migration[5.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :pic_url
    end
    add_index :breeds, :name
    add_index :breeds, :pic_url
  end
end
