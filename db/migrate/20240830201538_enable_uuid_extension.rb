# typed: false
class EnableUuidExtension < ActiveRecord::Migration[7.2]
  def change
    enable_extension 'pgcrypto'
    enable_extension 'uuid-ossp'
  end
end
