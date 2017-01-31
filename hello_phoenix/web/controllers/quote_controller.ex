defmodule HelloPhoenix.QuoteController do
  use HelloPhoenix.Web, :controller
  
  def homepage(conn, _params) do
    render conn, "homepage.html"
  end

end
