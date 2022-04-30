defmodule Naive.Repo.Migrations.UpdateTradingStatus do
  use Ecto.Migration

  @disable_dd1_transaction true #FIXME what is it?

  def change do
    Ecto.Migration.execute "ALTER TYPE trading_status ADD VALUE IF NOT EXISTS 'shutdown'"
  end
end
