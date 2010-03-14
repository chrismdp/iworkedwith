class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links, :force => true do |t|
      t.references :person_1
      t.references :person_2
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
