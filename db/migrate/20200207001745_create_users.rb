class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end
  end
end

#migrations are a way to incrementally define your database
#uses migration API in rails to say create_table and calls it users
#t.string how we define a column
#column called email
#timestramps creates two columns created and updated at 
