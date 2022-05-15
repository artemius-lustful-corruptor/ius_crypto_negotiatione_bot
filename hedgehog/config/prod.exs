import Config

config :naive,
  binance_client: Binance

config :streamer,
  binance_client: Binance


config :data_warehouse, DataWarehouse.Repo,
  database: "data_warehouse",
  username: "postgres",
  password: "hedgehogSecretPassword",
  hostname: "db"


config :streamer, Streamer.Repo,
  database: "streamer",
  username: "postgres",
  password: "hedgehogSecretPassword",
  hostname: "db"

config :naive,
  leader: Naive.Leader,
  trading: %{
    defaults: %{
      chunks: 5,
      budget: 1000,
      buy_down_interval: "0.0001",
      profit_interval: "-0.0012",
      rebuy_interval: "0.001"
    }
  }

config :naive, Naive.Repo,
  database: "naive",
  username: "postgres",
  password: "hedgehogSecretPassword",
  hostname: "db"

config :binance_mock,
  use_cached_exchange_info: false
