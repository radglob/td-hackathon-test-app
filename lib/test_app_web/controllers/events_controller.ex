defmodule TestAppWeb.EventsController do
  use TestAppWeb, :controller

  alias TestApp.Events

  def show(conn, %{"id" => id}) do
    event =
      id
      |> Events.get_event!()
      |> Events.preload_event_assocs()

    render(conn, "show.html", event: event)
  end
end
