class AddStatusTotasktasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasktasks, :status, :string
  end
end
