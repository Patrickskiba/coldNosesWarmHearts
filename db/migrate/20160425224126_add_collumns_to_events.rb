class AddCollumnsToEvents < ActiveRecord::Migration
  add_column :events, :title, :string
  add_column :events, :description, :string
  add_column :events, :start_time, :datetime
  add_column :events, :end_time, :datetime
end
