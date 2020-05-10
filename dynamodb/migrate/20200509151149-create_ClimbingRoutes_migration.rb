class CreateClimbingroutesMigration < Dynomite::Migration
  def up
    create_table "climbing-routes" do |t|
      t.partition_key "id" # required
      t.provisioned_throughput(5) # sets both read and write, defaults to 5 when not set
    end
  end
end

# More examples: https://github.com/tongueroo/dynomite/tree/master/docs
