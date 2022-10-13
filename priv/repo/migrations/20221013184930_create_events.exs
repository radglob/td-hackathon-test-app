defmodule TestApp.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :event_name, :string

      timestamps()
    end
  end
end
