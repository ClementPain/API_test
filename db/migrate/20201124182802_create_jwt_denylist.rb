class CreateJwtDenylist < ActiveRecord::Migration[6.0]
  def change
    create_table :jwt_denylists do |t|
    end
  end
end
