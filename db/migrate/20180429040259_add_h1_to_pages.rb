class AddH1ToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :h1, :json, array: true,default: []
  end
end
