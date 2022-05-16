import Config

# config :streamer, Streamer.Repo, database: "streamer_test"
# config :naive, Naive.Repo, database: "naive_test"
# config :data_warehouse, DataWarehouse.Repo, database: "data_warehouse_test"

config :binance_mock,
  use_cached_excange_info: true
