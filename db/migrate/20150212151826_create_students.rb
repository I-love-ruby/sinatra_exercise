class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string   :name
      t.string   :email, null: false,unique: true
      t.string   :telephone
      t.string   :gender
      t.integer  :school_id

      t.timestamps
    end
  end
end
