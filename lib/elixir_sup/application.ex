defmodule ElixirSup.Application do
  use Application

  def start(_type, _args) do
    children = [
      ElixirSup.Scheduler
    ]

    opts = [
      strategy: :one_for_one,
      name: ElixirSupervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
