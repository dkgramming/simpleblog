class CreateLike < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :ip
      t.references :likeable, polymorphic: true, index: true
    end
  end
end
