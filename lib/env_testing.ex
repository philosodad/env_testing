defmodule EnvTesting do
  use Application

  def start(_type, _args) do
    IO.puts System.get_env["TESTENV"]
    IO.puts Sets.testenv
    Supervisor.start_link [], strategy: :one_for_one
  end
end
