class AddH3ToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :h3, :json, array: true,default: []
  end
end
