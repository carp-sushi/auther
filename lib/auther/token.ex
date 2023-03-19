defmodule Auther.Token do
  use Joken.Config

  #
  # TODO: Can we make this dynamic? Pull and build signers from DB records?
  # Should use key-pairs if DB involved, so we only need to store public key.
  #
  # def signer_for(api_key) do
  #  :todo
  # end

  #
  # Skip stupid 'Joken' iss and aud claims.
  #
  @impl true
  def token_config do
    default_claims(skip: [:iss, :aud])
  end
end
