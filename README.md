# Auther

Template authorization verifier plug.

Examples

unauthorized:

```shell
curl -is -XGET localhost:4001/status
```

authorized:

```shell
curl -is -XGET -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2Nzc3MzYzMzMsImlhdCI6MTY3NzcyOTEzMywianRpIjoiMnQ0N3JnZnVicXNiajFpYzZrMDAwMHMxIiwibmJmIjoxNjc3NzI5MTMzLCJ4LWFkZHJlc3MiOiJ0cDE4dmQ4ZnB3eHpjazkzcWx3Z2hhajZhcmg0cDdjNW44OXg4a3NreiJ9.KwO9dGDhRy2KYCe2LHx9niQkHh6LAbtpczTerrMm4jU' localhost:4001/status
```

