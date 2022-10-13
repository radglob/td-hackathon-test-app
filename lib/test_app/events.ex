defmodule TestApp.Events do
  alias TestApp.Events.Event
  alias TestApp.Repo

  def get_event!(id) do
    Repo.get!(Event, id)
  end

  def preload_event_assocs(event) do
    Repo.preload(event, [:host, :location, :details])
  end
end
