curl --include --request POST "http://localhost:4741/foods/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "food": {
        "brand_name": "'"${BRAND}"'",
        "main_ingredient": "'"${MAIN}"'",
        "secondary_ingredient": "'"${SECOND}"'",
        "pet_id": "'"${PETID}"'",
        "score": "'"${SCORE}"'"
      }
  }'
