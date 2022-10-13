defmodule TestAppWeb.DetailsController do
  use TestAppWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html", changeset: :placeholder)
  end

  def create(conn, _params) do
    redirect(conn, to: Routes.events_path(conn, :show, 1))
  end
end
