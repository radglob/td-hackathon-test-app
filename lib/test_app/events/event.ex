defmodule TestApp.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :event_name, :string
    has_one :host, TestApp.Host
    has_one :location, TestApp.Location
    has_one :details, TestApp.Details

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:event_name])
    |> validate_required([:event_name])
  end
end
