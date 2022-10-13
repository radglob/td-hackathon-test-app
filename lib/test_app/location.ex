defmodule TestApp.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :location_name, :string
    field :event_id, :id

    timestamps()
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:location_name])
    |> validate_required([:location_name])
  end
end
