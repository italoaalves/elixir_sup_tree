defmodule ElixirSup.FileServer do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :file_server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:write_number, _) do
    ElixirSup.WriteRandomNumber.write
    {:noreply, %{}}
  end
end
