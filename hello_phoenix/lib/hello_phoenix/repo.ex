defmodule HelloPhoenix.Repo do
  use Ecto.Repo, otp_app: :hello_phoenix
  
    def conf do
      parse_url Application.get_env(:phoenix, :database)[:url]
    end
    
    def priv do
      app_dir(:splurty, "priv/repo")
    end
  
end
