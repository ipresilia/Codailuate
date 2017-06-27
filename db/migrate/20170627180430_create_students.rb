class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :picture
      t.string :last_evaluation

      t.timestamps
    end
  end
end
