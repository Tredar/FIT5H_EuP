class AddFieldToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :end_dates, :datetime
  end
end
