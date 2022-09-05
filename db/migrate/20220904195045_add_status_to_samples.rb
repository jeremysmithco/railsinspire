class AddStatusToSamples < ActiveRecord::Migration[7.0]
  def change
    create_enum :sample_status, ["private", "public"]

    add_column :samples, :status, :sample_status, default: "private", null: false
  end
end
