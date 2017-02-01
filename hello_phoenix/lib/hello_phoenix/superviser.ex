defmodule HelloPhoenix.Supervisor do
  use Supervisor
  
  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end
  
  def init([]) do
    # Adding repo to be sent into supervise
    tree = [
      worker(Repo, []),
      worker(HelloPhoenix.Endpoint, []),
    ]
    supervise(tree, strategy: :one_for_one)
  end
end