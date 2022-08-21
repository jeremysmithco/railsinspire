class CreateSampleFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :sample_files do |t|
      t.references :sample, null: false, foreign_key: true
      t.string :path
      t.text :contents
      t.text :description

      t.timestamps
    end
  end
end
