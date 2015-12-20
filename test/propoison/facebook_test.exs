defmodule Propoison.FacebookTest do
  use ExUnit.Case

  @facebook_fields "picture,id,name,first_name,last_name,link,email" 

  setup do
    Propoison.Facebook.start 
    token = System.get_env("FB_TOKEN")
    get = "/me?fields=#{@facebook_fields}&access_token=#{token}"
    body = case  Propoison.Facebook.get(get) do
      {:ok, %HTTPoison.Response{body: body}} -> body
      _ -> {:error}
    end
    {:ok, body: body}
  end

  test "poison parse" do
    {:ok, res} = Propoison.Facebook.get "/me"
    body = res.body
    assert body["error"]
  end

  test "set url avatar", %{body: body} do
    assert body["avatar"] =~ "picture?width"
  end
end
