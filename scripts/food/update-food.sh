curl "http://localhost:4741/foods/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "food": {
      "brand_name": "'"${NAME}"'",
      "main_ingredient": "'"${MAIN}"'",
      "secondary_ingredient": "'"${SECOND}"'",
      "score": "'"${SCORE}"'"
    }
  }'

echo
