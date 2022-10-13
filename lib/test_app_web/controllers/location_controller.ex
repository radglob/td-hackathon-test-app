defmodule TestAppWeb.LocationController do
  use TestAppWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html", changeset: :placeholder)
  end

  def create(conn, _params) do
    redirect(conn, to: Routes.details_path(conn, :new))
  end
end
