class AddDiscardedAtToSamples < ActiveRecord::Migration[7.0]
  def change
    add_column :samples, :discarded_at, :datetime
    add_index :samples, :discarded_at
  end
end
