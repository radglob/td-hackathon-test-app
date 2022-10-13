defmodule TestApp.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :location_name, :string
      add :event_id, references(:events, on_delete: :nothing)

      timestamps()
    end

    create index(:locations, [:event_id])
  end
end
