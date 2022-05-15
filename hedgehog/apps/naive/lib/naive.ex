defmodule Naive do
  @moduledoc """
  Documentation for `Naive`.
  """

  alias Naive.DynamicSymbolSupervisor

  def start_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.start_worker()
  end

  def stop_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.stop_worker()
  end

  def shutdown_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.shutdown_worker()
  end

  def seed() do
    :code.priv_dir(:naive)
    |> Path.join("seed_settings.exs")
    |> Code.eval_file()
  end
end
