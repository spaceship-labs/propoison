defmodule Propoison.FacebookTest do
  use ExUnit.Case

  setup do
    Propoison.Facebook.start 
  end

  test "poison parse" do
    {:ok, res} = Propoison.Facebook.get("/me")
    body = res.body
    assert body["error"] != nil
  end
end
