defmodule TestApp.Host do
  use Ecto.Schema
  import Ecto.Changeset

  schema "hosts" do
    field :host_name, :string
    field :event_id, :id

    timestamps()
  end

  @doc false
  def changeset(host, attrs) do
    host
    |> cast(attrs, [:host_name])
    |> validate_required([:host_name])
  end
end
