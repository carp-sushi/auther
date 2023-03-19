# Auther

Template authorization verifier plug.

Examples

unauthorized:

```shell
curl -is -XGET localhost:4001/status
```

authorized:

```shell
curl -is -XGET -H "Authorization: Bearer $TOKEN" localhost:4001/status
```

generate a token:

```
iex -S mix
iex(1)> Auther.Token.generate_and_sign!()
"use output here for $TOKEN above..."
```
