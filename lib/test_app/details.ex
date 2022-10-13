defmodule TestApp.Details do
  use Ecto.Schema
  import Ecto.Changeset

  schema "details" do
    field :end_time, :naive_datetime
    field :start_time, :naive_datetime
    field :event_id, :id

    timestamps()
  end

  @doc false
  def changeset(details, attrs) do
    details
    |> cast(attrs, [:start_time, :end_time])
    |> validate_required([:start_time, :end_time])
  end
end
