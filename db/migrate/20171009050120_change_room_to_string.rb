class ChangeRoomToString < ActiveRecord::Migration[5.1]
  def change
    change_column :enquiries, :room, :string
  end
end
