defmodule TestApp.Repo.Migrations.CreateDetails do
  use Ecto.Migration

  def change do
    create table(:details) do
      add :start_time, :naive_datetime
      add :end_time, :naive_datetime
      add :event_id, references(:events, on_delete: :nothing)

      timestamps()
    end

    create index(:details, [:event_id])
  end
end
