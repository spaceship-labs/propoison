defmodule Propoison.Facebook do
  use HTTPoison.Base

  @provider "facebook.com"

  def process_url(url) do
    "https://graph.facebook.com" <> url
  end

  def process_response_body(body) do
    body
      |> Poison.decode!
      |> Propoison.set_email(@provider)
      |> avatar
  end

  defp avatar(%{"id" => id} = body) do
    avatar = "https://graph.facebook.com/#{id}/picture?type=large"
    Dict.put body, "avatar", avatar 
  end

  defp avatar(body), do: body

end
