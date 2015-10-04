defmodule PropoisonTest do
  use ExUnit.Case
  doctest Propoison

  test "if not set email, set fake email id@provider" do
    user = %{"id" => "id"}
    assert Propoison.set_email(user, "provider") == %{"email" => "id@provider", "id" => "id"}
  end

  test "if set email, nothing" do
    user = %{"id" => "id", "email" => "user@email.com"}
    assert Propoison.set_email(user, "provider") == %{"email" => "user@email.com", "id" => "id"}
  end
end
