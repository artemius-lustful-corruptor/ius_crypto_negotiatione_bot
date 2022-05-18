import Config
config :data_warehouse, DataWarehouse.Repo,
  database: "data_warehouse",
  # "postgres",
  username: {:system, "DB_USER"},
  # "hedgehogSecretPassword",
  password: {:system, "DB_PASSWORD"},
  hostname: {:system, "DB_HOST"}


config :streamer, Streamer.Repo,
  database: "streamer",
  # "postgres",
  username: {:system, "DB_USER"},
  # "hedgehogSecretPassword",
  password: {:system, "DB_PASSWORD"},
  hostname: {:system, "DB_HOST"}


config :naive,
  leader: Naive.Leader,
  trading: %{
    defaults: %{
      chunks: 3,
      budget: 700,
      buy_down_interval: "0.0001",
      profit_interval: "-0.0012",
      rebuy_interval: "0.001"
    }
  }

config :naive, Naive.Repo,
  database: "naive",
  # "postgres",
  username: {:system, "DB_USER"},
  # "hedgehogSecretPassword",
  password: {:system, "DB_PASSWORD"},
  hostname: {:system, "DB_HOST"}
