defmodule TestApp.Repo.Migrations.CreateHosts do
  use Ecto.Migration

  def change do
    create table(:hosts) do
      add :host_name, :string
      add :event_id, references(:events, on_delete: :nothing)

      timestamps()
    end

    create index(:hosts, [:event_id])
  end
end
