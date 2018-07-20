curl "http://localhost:4741/pets/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "pet": {
      "name": "'"${NAME}"'",
      "age": "'"${AGE}"'"
    }
  }'

echo
