class AddLinksToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :links, :json, array: true,default: []
  end
end
