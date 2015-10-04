defmodule Propoison do
  def set_email(%{"email" => _email} = body, _provider) do 
    body
  end
  
  def set_email(%{"id" => id} = body, provider) do
    Dict.put(body, "email", "#{id}@#{provider}")
  end

  def set_email(body, _provider) do
    body
  end

end
