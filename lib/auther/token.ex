defmodule Auther.Token do
  use Joken.Config

  @impl true
  def token_config do
    default_claims(skip: [:iss, :aud])
  end
end
