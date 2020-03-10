defmodule SafeWorkerTest do
  use ExUnit.Case, async: true

  @tag :skip
  test "continues after errors and returns all results" do
    SafeWorker.stream_work()
    |> Enum.take(10)
    |> IO.inspect(label: "Reporting partial success")
  end

  @tag :skip
  test "streams work until encountering an error" do
    SafeWorker.stream_work()
    |> Enum.reduce_while([], fn
      {:error, _error, _context} = error, _results ->
        {:halt, error}

      result, results ->
        {:cont, [result | results]}
    end)
    |> case do
      {:error, _error, _context} = error ->
        error

      results ->
        Enum.reverse(results)
    end
    |> IO.inspect(label: "Halt on error with context")
  end
end
