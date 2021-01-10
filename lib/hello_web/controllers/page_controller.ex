defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  alias Hello.CMS

  def index(conn, %{"id" => id}) do
    page =
      id
      |> CMS.get_page!()
      |> CMS.inc_page_views()

    render(conn, "index.html", page: page)
  end
end
