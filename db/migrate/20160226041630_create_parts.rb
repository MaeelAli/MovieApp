class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      	#add  foreign keys that point ot movie and actor tables
      	t.belongs_to :movie, index: true
      	t.belongs_to :actor, index: true
      	t.timestamps null: false
    end
  end
end
