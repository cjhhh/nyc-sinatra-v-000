class CreateTitles < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
    end
  end
end
