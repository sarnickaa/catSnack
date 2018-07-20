curl --include --request POST "http://localhost:4741/pets/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "pet": {
        "name": "'"${NAME}"'",
        "age": "'"${AGE}"'"
      }
  }'
