class AddH2ToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :h2, :json, array: true,default: []
    
  end
end
